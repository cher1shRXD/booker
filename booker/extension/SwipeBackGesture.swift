//
//  Untitled.swift
//  booker
//
//  Created by dgsw13 on 2/25/25.
//

import SwiftUI

// 사용자 정의 제스처를 만드는 코드
struct SwipeBackGesture: ViewModifier {
    @Environment(\.presentationMode) var presentationMode
    
    func body(content: Content) -> some View {
        content
            .gesture(
                DragGesture()
                    .onEnded { gesture in
                        if gesture.translation.width > 100 {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }
            )
    }
}

// 모든 View에서 쉽게 사용할 수 있는 확장
extension View {
    func swipeBackGesture() -> some View {
        self.modifier(SwipeBackGesture())
    }
}
