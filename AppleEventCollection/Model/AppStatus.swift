//
//  AppStatus.swift
//  AppleEventCollection
//
//  Created by 阿彪 on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import Foundation

class AppStatus: ObservableObject{
    @Published var toShowARModel = false
    @Published var pickedModelName = ""
    @Published var pickedModelExtension = ""
    
    @Published var showErrorAlert = false
    var allowScaling: Bool = true
    
    var fileExisted = false
    var modelURL: URL?
    
    func checkModelExisted(){
        if pickedModelName == "apple_event_en_"{
            let randomCard = String(Int.random(in: 1..<27))
            pickedModelName += randomCard
        }
        guard let fileURL = Bundle.main.url(forResource: pickedModelName, withExtension: pickedModelExtension) else {
            print("Unable to load \(pickedModelName).\(pickedModelExtension) from main bundle")
            fileExisted = false
            showErrorAlert = true
            return
        }
        modelURL = fileURL
        fileExisted = true
        toShowARModel = true
    }
}
