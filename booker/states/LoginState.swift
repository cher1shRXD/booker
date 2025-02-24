//
//  LoginState.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

class LoginState: ObservableObject {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @Published var hasSeenOnboarding: Bool = false
}
