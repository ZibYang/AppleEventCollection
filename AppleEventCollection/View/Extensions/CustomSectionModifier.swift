//
//  CustomSectionModifier.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/27.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

struct CustomSectionModifer: ViewModifier {
    @Environment(\.colorScheme) var colorScheme

    func body(content: Content) -> some View {
        content
            .background(colorScheme == .dark ? Color(red: 0.1098036841, green: 0.1098041013, blue: 0.1183908954) : .white)
            .overlay(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(Color.clear, lineWidth: 1).blendMode(.overlay))
            .mask(RoundedRectangle(cornerRadius: 15, style: .continuous))
            //.padding(.horizontal)
    }
}

extension View {
    func mySectionModifier() -> some View {
        modifier(CustomSectionModifer())
    }
}
