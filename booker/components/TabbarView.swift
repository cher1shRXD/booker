import SwiftUI

struct TabbarView: View {
    
    @State var selectedTab: Tab = .main
    
    var body: some View {
        VStack(spacing: 0) {
            Header()
            switch selectedTab {
            case .main:
                MainView()
            case .library:
                LibraryView()
            }
            
            Tabbar(selectedTab: $selectedTab)
                .padding(.bottom, 32)
            
        }
        .background(Color.gray.opacity(0.1))
        .edgesIgnoringSafeArea(.bottom)
    }
}
