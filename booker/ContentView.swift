import SwiftUI

struct ContentView: View {
    @EnvironmentObject var loginState: LoginState

    var body: some View {
        if !loginState.hasSeenOnboarding {
            OnboardingView()
        } else if !loginState.isLoggedIn {
            AuthView()
        } else {
            MainView()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginState()) // 미리보기에서도 환경 객체 제공
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

