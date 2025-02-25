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
            ScrollView {
                VStack(spacing: 24){
                    VStack(spacing: 8) {
                        HStack{
                            Text("읽는 중인 소설")
                                .font(.headline)
                            Spacer()
                        }
                        ForEach(0..<3) { _ in
                            LibraryItem()
                        }
                    }.padding(.horizontal, 16)
                    VStack(spacing: 8) {
                        HStack{
                            Text("영원한 베스트 셀러")
                                .font(.headline)
                            Spacer()
                        }
                        .padding(.horizontal, 16)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 16) {
                                ForEach(0..<5) { _ in
                                    BookItem()
                                }
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                    VStack(spacing: 8) {
                        HStack{
                            Text("랭킹")
                                .font(.headline)
                            Spacer()
                        }
                        ForEach(0..<5) { _ in
                            RankingItem()
                        }
                    }.padding(.horizontal, 16)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
            }
            .refreshable {
                
            }
        }.frame(maxWidth: .infinity)
    }
    
}

#Preview {
    MainView()
}
