//
//  OnboardingView.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var loginState: LoginState

    var body: some View {
        VStack {
            Text("온보딩 화면 🎉")
                .font(.largeTitle)
            
            Button("시작하기") {
                loginState.hasSeenOnboarding = true
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
