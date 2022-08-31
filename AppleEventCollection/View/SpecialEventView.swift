//
//  SpecialEventView.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

struct SpecialEventView: View {
    @StateObject var appStatus = AppStatus()
    
    var titleText: String
    var eventList: [AppleEvent]
    var colums = [GridItem(.adaptive(minimum: 500), spacing: 10)]
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false){
                LazyVGrid(columns: colums, spacing: 0, pinnedViews: .sectionHeaders){
                        Section(header: sectionTitle(titleText: titleText) .font(.headline)) {
                        ForEach(eventList){ event in
                            HeroView(event: event)
                                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                                .padding(.horizontal, 1)
                                .padding(.vertical)
                                .shadow(color: .white, radius: 1)
                        }
                            Color.clear
                                .frame(height: 70)
                    }
                }
            }
            .padding(.bottom)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $appStatus.toShowARModel){
            ARModelView()
        }
        .environmentObject(appStatus)
    }
    
    @ViewBuilder
    func sectionTitle(titleText: String) -> some View{
        HStack {
            Text(titleText)
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .padding()
                .cornerRadius(12)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 50)
        .background(.black.opacity(0.7))
    }
}


struct SpecialEventView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEventView(titleText: "WWDC", eventList: WWDCEventList)
        
        SpecialEventView(titleText: "WWDC", eventList: WWDCEventList)
            .previewDevice("iPhone 13 Pro")
    }
}
