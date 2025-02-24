//
//  TabView.swift
//  booker
//
//  Created by dgsw13 on 2/24/25.
//

import SwiftUI

struct TabbarView: View {
    
    @State var selectedTab: Tab = .main
    
    var body: some View {
        
        VStack(spacing: 0) {
            switch selectedTab {
            case .main:
                MainView()
            case .library:
                LibraryView()
            }
            CustomTabView(selectedTab: $selectedTab)
                .padding(.bottom, 16)
        }
        .edgesIgnoringSafeArea(.bottom)

    }
}
