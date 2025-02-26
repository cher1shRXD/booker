//
//  BookDetailView.swift
//  booker
//
//  Created by dgsw13 on 2/26/25.
//

import SwiftUI

struct BookDetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    AsyncImageView(url: URL(string: "https://picsum.photos/200/300")!)
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
            }
            .refreshable {
                
            }
            VStack {
                Button(action: {
                    dismiss()
                }){
                    Text("구매하기")
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                }
                .background(.white)
                .cornerRadius(12)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.1))
        .navigationBarBackButtonHidden()
        .backButton()
    }
}

#Preview {
    NavigationStack {
        BookDetailView()
    }
}
