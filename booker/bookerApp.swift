//
//  bookerApp.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

@main
struct bookerApp: App {
    @StateObject var loginState = LoginState() // 전역 상태 관리

        var body: some Scene {
            WindowGroup {
                ContentView()
                    .environmentObject(loginState) // 모든 뷰에 상태 전달
            }
        }
}
