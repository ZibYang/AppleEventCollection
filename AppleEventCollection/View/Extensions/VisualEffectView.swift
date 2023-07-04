//
//  VisualEffectView.swift
//  Special Event
//
//  Created by zzy on 2023/5/27.
//  Copyright © 2023 Personal usage. All rights reserved.
//
import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    var uiVisualEffect: UIVisualEffect?
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {
        UIVisualEffectView()
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) {
        uiView.effect = uiVisualEffect
    }
}


extension Animation {
    static var blur: Animation { .linear(duration: 0.25) }
}
