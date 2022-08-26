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
    var modelName: String
    var modelExtension: String
    
    init(modelName: String, modelExtension: String){
        self.modelExtension = modelExtension
        
        if modelName == "apple_event_en_"{
            randomCard = String(Int.random(in: 1..<27))
        }
        self.modelName = modelName + randomCard
    }
    
    var body: some View {
        ZStack{
            ARQuickLookView(
                name: modelName,
                modelExtension: modelExtension)
            
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
        ARModelView(modelName: "apple_event_22_3_8",
                    modelExtension: "reality")
    }
}
