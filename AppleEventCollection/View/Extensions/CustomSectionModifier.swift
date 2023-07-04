//
//  CustomSectionModifier.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/27.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

struct CustomSectionModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.ultraThinMaterial)
            .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(Color.clear, lineWidth: 1).blendMode(.overlay))
            .mask(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

extension View {
    func mySectionModifier() -> some View {
        modifier(CustomSectionModifer())
    }
}
