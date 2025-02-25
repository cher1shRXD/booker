import SwiftUI

struct ContentView: View {
    @EnvironmentObject var loginState: LoginState

    var body: some View {
        NavigationStack{
            TabbarView()
                .fullScreenCover(isPresented: Binding<Bool>(
                    get: { !loginState.hasSeenOnboarding },
                    set: { loginState.hasSeenOnboarding = !$0 }
                )) {
                    OnboardingView()
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginState())
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

