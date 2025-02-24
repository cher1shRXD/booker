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
        .environmentObject(LoginState())
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

