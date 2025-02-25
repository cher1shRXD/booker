import SwiftUI

struct LibraryItem: View {
    var body: some View {
        HStack{
            AsyncImageView(url: URL(string: "https://picsum.photos/200/300")!)
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            VStack{
                Text("Book Title").font(.system(size: 18))
                Text("Author Name").font(.system(size: 12)).foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 80)
        .padding(4)
        .background(.white)
        .cornerRadius(12)
    }
}
