import SwiftUI

struct ProfileView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var loginState: LoginState
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    UserInfo(name: "김철수", phone: "010-1234-5678")
                    VStack {
                        HStack{
                            Text("나의 소설력은?")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                            Spacer()
                        }
                        HStack{
                            Text("상위 5%")
                                .fontWeight(.semibold)
                                .font(.system(size: 20))
                        }.padding(.vertical, 4)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(16)
                    .background(.white)
                    .cornerRadius(12)
                    BookInfo(totalBookCount: "32", totalReadCount: "21", totalUnreadCount: "17", totalPurchased: "567,900")
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
            }
            .refreshable {
                
            }
            
            VStack {
                Button(action: {
                    loginState.hasSeenOnboarding = false
                    loginState.isLoggedIn = false
                    dismiss()
                }){
                    Text("로그아웃")
                        .fontWeight(.medium)
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                }
                .background(.white)
                .cornerRadius(12)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.1))
        .navigationTitle("프로필")
        .navigationBarBackButtonHidden()
        .backButton()
    }
}

#Preview {
    NavigationStack {
        ProfileView()
    }
}
