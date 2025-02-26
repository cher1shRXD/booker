import SwiftUI

enum Tab {
    case main
    case library
}

struct Tabbar: View {
    
    @Binding var selectedTab: Tab

    var body: some View {
        VStack(spacing: 8){
            Divider()
                .fontWeight(.bold)
                .foregroundColor(.gray)
            HStack(alignment: .center) {
                Button {
                    selectedTab = .main
                } label: {
                    VStack(spacing: 4) {
                        Image(systemName: "house.fill").foregroundColor(selectedTab == .main ? .blue : .gray)
                        
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
                        Image(systemName: "books.vertical.fill").foregroundColor(selectedTab == .library ? .blue : .gray)
                        
                        Text("라이브러리")
                            .foregroundColor(selectedTab == .library ? .blue : .gray)
                            .font(.system(size: 10))
                    }
                    .offset(x: 5)
                }
                .padding(.horizontal, UIScreen.main.bounds.width/4 - 30)
            }
            .frame(height: 56)
        }
        .frame(maxWidth: .infinity)
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}


#Preview {
    Tabbar(selectedTab: .constant(Tab.main))
}
