//
//  Untitled.swift
//  booker
//
//  Created by dgsw13 on 2/25/25.
//

import SwiftUI

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

extension View {
    func swipeBackGesture() -> some View {
        self.modifier(SwipeBackGesture())
    }
}
