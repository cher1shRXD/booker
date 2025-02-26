//
//  BookItem.swift
//  booker
//
//  Created by dgsw13 on 2/25/25.
//

import SwiftUI

struct BookItem: View {
    var body: some View {
        NavigationLink(destination: BookDetailView()) {
            VStack{
                AsyncImageView(url: URL(string: "https://picsum.photos/200/300")!)
                    .frame(width: 200, height: 200)
                    .cornerRadius(8)
                HStack{
                    Text("Title").font(.system(size: 18))
                    Spacer()
                }.padding(.horizontal, 4)
                HStack{
                    Text("Author").font(.system(size: 12)).foregroundColor(.gray)
                    Spacer()
                }
                .padding(.bottom, 4)
                .padding(.horizontal, 4)
            }.frame(width: 200).padding(4).background(.white).cornerRadius(12)
        }
    }
}
