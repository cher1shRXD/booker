import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    UserInfo(name: "김철수", phone: "010-1234-5678")
                    BookInfo(totalBookCount: "32", totalReadCount: "21", totalUnreadCount: "17", totalPurchased: "567,900")
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
            }
            .refreshable {
                
            }
            .background(Color.gray.opacity(0.1))
            .navigationTitle("프로필")
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        HStack(spacing: 4) {
                            Image(systemName: "chevron.left")
                            Text("홈").fontWeight(.semibold)
                        }
                        .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}







#Preview {
    NavigationStack {
        ProfileView()
    }
}
