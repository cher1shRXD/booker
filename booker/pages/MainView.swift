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
        VStack(alignment: .leading, spacing: 0){
            ScrollView {
                VStack {
                    VStack(alignment: .leading) {
                        HStack{
                            Text("Hello, World!")
                                .font(.headline)
                            Spacer()
                        }
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 16)
                
            }
            .refreshable {
                
            }
        }.frame(maxWidth: .infinity)
    }
    
}

#Preview {

        MainView()
    
}
