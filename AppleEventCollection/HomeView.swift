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
    @StateObject var eventSource = EventSource()
    
    var body: some View {
        TabView(selection: $tabSelection){
            SpecialEventView(titleText: "Apple Event", eventRange: [0, 21])
                .tabItem {
                    Label("Event", systemImage: "e.circle.fill")
                }
                .tag(0)
            
            SpecialEventView(titleText: "WWDC", eventRange: [21, 32])
                .tabItem {
                    Label("WWDC", systemImage: "w.circle.fill")
                }
                .tag(1)
            
            SpecialEventView(titleText: "Apple Design Award", eventRange: [32, 39])
                .tabItem {
                    Label("ADA", systemImage: "a.circle.fill")
                }
                .tag(2)
            
            Text("TODO")
                .tabItem {
                    Label("Settings", systemImage: "gearshape.circle")
                }
                .tag(3)
            
        }
        .environmentObject(eventSource)
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
        
        HomeView()
            .previewDevice("iPad Pro (12.9-inch) (5th generation)")
            .preferredColorScheme(.dark)
    }
}
