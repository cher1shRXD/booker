import SwiftUI

struct Header: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                HStack(spacing: 4) {
                    Text("Booker")
                        .font(.title)
                        .fontWeight(.medium)
                    Image(systemName: "book.fill")
                        .font(.title2)
                }
                
                Spacer()
                
                NavigationLink(destination: ProfileView()) {
                    Image(systemName: "person.circle")
                        .font(.title)
                        .foregroundColor(.blue)
                        .fontWeight(.light)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top)
        }.background(Color.gray.opacity(0.1))
    }
}

#Preview {
    Header()
}
