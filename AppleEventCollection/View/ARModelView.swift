//
//  ARModelView.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

struct ARModelView: View {
    @EnvironmentObject var appStatus: AppStatus
    var randomCard: String = ""
    
    var body: some View {
        ZStack{
            ARQuickLookView()
                .environmentObject(appStatus)
            
            Button(action: {
                appStatus.toShowARModel.toggle()
            }, label: {
                Text("Exit")
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        }
    }
}

struct ARModelView_Previews: PreviewProvider {
    static var previews: some View {
        ARModelView()
        .environmentObject(AppStatus())
    }
}
