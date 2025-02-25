//
//  RankingItem.swift
//  booker
//
//  Created by dgsw13 on 2/25/25.
//

import SwiftUI

struct RankingItem: View {
    var body: some View {
        HStack(spacing: 0){
            HStack{
                Text("100").fontWeight(.semibold).font(.system(size: 12))
            }
            .frame(width: 32)
            .padding(.trailing, 4)
            AsyncImageView(url: URL(string: "https://picsum.photos/200/300")!)
                .frame(width: 56, height: 56)
                .cornerRadius(8)
            VStack{
                Text("Book Title").font(.system(size: 14))
                Text("Author Name").font(.system(size: 10)).foregroundColor(.gray)
            }.padding(.leading, 8)
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 56)
        .padding(4)
        .background(.white)
        .cornerRadius(12)
    }
}
