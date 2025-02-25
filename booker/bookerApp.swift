//
//  bookerApp.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

@main
struct bookerApp: App {
    @StateObject var loginState = LoginState()

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(loginState)
            }
        }
}

