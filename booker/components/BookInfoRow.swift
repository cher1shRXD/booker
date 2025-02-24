//
//  BookInfoRow.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//

import SwiftUI

struct BookInfoRow: View {
    var icon: String
    var title: String
    var value: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 18, height: 18)
                .foregroundColor(.gray)

            Text(title)
                .font(.system(size: 14))

            Spacer()
            Text(value)
                .foregroundColor(.gray)
                .font(.system(size: 14))
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
    }
}
