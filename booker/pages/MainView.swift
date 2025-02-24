//
//  MainView.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var loginState: LoginState
    
    var body: some View {
        VStack(spacing: 0){
            NavigationStack {
                Header()
                ScrollView {
                    VStack {
                        VStack(alignment: .leading) {
                            Text("Hello, World!")
                                .font(.headline)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    
                }
                .refreshable {
                    
                }
                
            }
        }.background(Color.gray.opacity(0.1))
    }
}

#Preview {

        MainView()
    
}
