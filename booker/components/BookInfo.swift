//
//  BookInfo.swift
//  booker
//
//  Created by dgsw13 on 2/23/25.
//
import SwiftUI

struct BookInfo: View {
    var totalBookCount: String
    var totalReadCount: String
    var totalUnreadCount: String
    var totalPurchased: String

    var body: some View {
        VStack {
            BookInfoRow(icon: "books.vertical", title: "다운로드한 책", value: totalBookCount + "권")
            Divider()
            BookInfoRow(icon: "book.fill", title: "읽은 횟 수", value: totalReadCount + "권")
            Divider()
            BookInfoRow(icon: "book", title: "아직 읽지 않은 책", value: totalUnreadCount + "권")
            Divider()
            BookInfoRow(icon: "wallet.bifold", title: "총 결제한 금액", value: totalPurchased + "원")
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(Color.white)
        .cornerRadius(12)
    }
}
