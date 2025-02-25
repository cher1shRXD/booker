import SwiftUI

enum Tab {
    case main
    case library
}

struct Tabbar: View {
    
    @Binding var selectedTab: Tab
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        HStack(alignment: .center) {
            Button {
                selectedTab = .main
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: selectedTab == .main ? "house.fill" : "house")
                        .foregroundColor(selectedTab == .main ? .blue : .gray)
                    
                    Text("메인")
                        .foregroundColor(selectedTab == .main ? .blue : .gray)
                        .font(.system(size: 10))
                }
                .offset(x: -5)
            }
            .padding(.horizontal, UIScreen.main.bounds.width/4 - 30)
            
            Button {
                selectedTab = .library
            } label: {
                VStack(spacing: 4) {
                    Image(systemName: selectedTab == .library ? "books.vertical.fill" : "books.vertical")
                        .foregroundColor(selectedTab == .library ? .blue : .gray)
                    
                    Text("라이브러리")
                        .foregroundColor(selectedTab == .library ? .blue : .gray)
                        .font(.system(size: 10))
                }
                .offset(x: 5)
            }
            .padding(.horizontal, UIScreen.main.bounds.width/4 - 30)
        }
        .frame(width: UIScreen.main.bounds.width - 36, height: 64)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(colorScheme == .dark ? Color.black : Color.white)
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 2)
        )
    }
}
