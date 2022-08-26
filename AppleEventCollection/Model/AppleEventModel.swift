//
//  AppleEventModel.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

struct AppleEvent: Identifiable{
    var id = UUID()
    
    var mainColor: Color = .white // for ar icon and detail text
    var backgroundColor: [Color] = [.black] // for detail background color
    var titleColorSet: [Color] = [.white]  // for title color
    var tcStart: UnitPoint = .leading // Title Color start point
    var tcEnd: UnitPoint = .trailing // Title Color end point
    
    var bgcStart: UnitPoint = .leading // Back Ground Color start point
    var bgcEnd: UnitPoint = .trailing // Back Ground Color end point
    
    var time : String // Pacific Time Zone
    
    var title : String
    var detail: String = ""
    var haveARModel: Bool = false
    var thumbnail: String = ""
    var modelName: String = ""
    var modelExtension: String = ""
}
