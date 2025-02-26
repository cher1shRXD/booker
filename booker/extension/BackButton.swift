//
//  BackButton.swift
//  booker
//
//  Created by dgsw13 on 2/26/25.
//


import SwiftUI

struct BackButton: ViewModifier {
    @Environment(\.dismiss) var dismiss
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        HStack {
                            Image(systemName: "chevron.left")
                        }
                    }
                }
            }
    }
}

extension View {
    public func backButton() -> some View {
        modifier(BackButton())
    }
}
