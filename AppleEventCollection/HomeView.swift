//
//  HomeView.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var showingPreview = false
    
    @State var allowsScaling = false
    
    @State var tabSelection = 0
    
    var body: some View {
        TabView(selection: $tabSelection){
            SpecialEventView(titleText: "Apple Event", eventList: appleEventList)
                .tabItem {
                    Label("Event", systemImage: "e.square.fill")
                }
                .tag(0)
            
            SpecialEventView(titleText: "WWDC", eventList: WWDCEventList)
                .tabItem {
                    Label("WWDC", systemImage: "w.square.fill")
                }
                .tag(1)
            
            SpecialEventView(titleText: "Apple Design Award", eventList: ADAEventList)
                .tabItem {
                    Label("ADA", systemImage: "a.square.fill")
                }
                .tag(2)
            
//            Text("TODO")
//                .tabItem {
//                    Label("Developer", systemImage: "d.square.fill")
//                }
//                .tag(3)
            
        }
        .edgesIgnoringSafeArea(.all)
        .environment(\.colorScheme, .dark)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
        HomeView()
            .previewDevice("iPhone 13 Pro")
    }
}
