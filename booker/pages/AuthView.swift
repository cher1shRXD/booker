//
//  AuthView.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

struct AuthView: View {
    @EnvironmentObject var loginState: LoginState

    var body: some View {
        VStack {
            Text("로그인 / 회원가입 화면")
                .font(.title)
            
            Button("로그인") {
                loginState.isLoggedIn = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}
