import SwiftUI
import Combine

actor ImageCache {
    static let shared = ImageCache()
    private var cache: [String: Image] = [:]
    
    func image(for key: String) -> Image? {
        cache[key]
    }
    
    func insertImage(_ image: Image, for key: String) {
        cache[key] = image
    }
}

@MainActor
class ImageLoader: ObservableObject {
    @Published var image: Image?
    @Published var isLoading = false
    private var cancellable: AnyCancellable?
    private let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func load() {
        guard !isLoading else { return }
        
        Task {
            if let cached = await ImageCache.shared.image(for: url.absoluteString) {
                image = cached
                return
            }
            
            isLoading = true
            
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                guard let uiImage = UIImage(data: data) else {
                    throw URLError(.badServerResponse)
                }
                
                let swiftUIImage = Image(uiImage: uiImage)
                await ImageCache.shared.insertImage(swiftUIImage, for: url.absoluteString)
                image = swiftUIImage
            } catch {
                print("Error loading image: \(error)")
            }
            
            isLoading = false
        }
    }
    
    func cancel() {
        cancellable?.cancel()
    }
}

struct AsyncImageView: View {
    let url: URL
    @StateObject private var loader: ImageLoader
    
    init(url: URL) {
        self.url = url
        _loader = StateObject(wrappedValue: ImageLoader(url: url))
    }
    
    var body: some View {
        GeometryReader { geometry in
            Group {
                if let image = loader.image {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                } else {
                    ProgressView()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .background(Color.gray.opacity(0.2))
                }
            }
        }
        .onAppear {
            loader.load()
        }
        .onDisappear {
            loader.cancel()
        }
    }
}
