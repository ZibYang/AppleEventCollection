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
    @EnvironmentObject var eventSource: EventSource

    var titleText: String
    var eventRange: [Int] // [0, 10]
    var colums = [GridItem(.adaptive(minimum: 500), spacing: 10)]
    
    var body: some View {
        VStack{
            ZStack {
                ScrollView(showsIndicators: false){
                    LazyVGrid(columns: colums, spacing: 0, pinnedViews: .sectionHeaders){
                        Section(header: sectionTitle(titleText: titleText) .font(.headline)) {
                            ForEach(eventRange[0]..<eventRange[1], id:\.self){ index in
                                HeroView(event: eventSource.appleEventList[index])
                                    .padding(.horizontal, 12)
                                    .padding(.vertical)
                                    .shadow(color: .white, radius: 1)
                                    .onTapGesture {
                                        withAnimation(.linear){
                                            eventSource.selectedIndex = index
                                            eventSource.showDetail.toggle()
                                        }
                                        // print("selected: \(index)")
                                    }
                            }
                            Color.clear
                                .frame(height: 70)
                        }
                    }
                }
                .padding(.bottom)
                .zIndex(1)
//                if showDetail {
//                    VisualEffectView(uiVisualEffect: UIBlurEffect(style: .dark))
//                        .edgesIgnoringSafeArea(.all)
//                        .transition(.opacity)
//                        .zIndex(2)
//                }
            }
        }
        .ignoresSafeArea()
        .sheet(isPresented: $eventSource.showDetail, content: {
            EventDetailView(event: eventSource.appleEventList[eventSource.selectedIndex], showDetail: $eventSource.showDetail)
        })
        .fullScreenCover(isPresented: $appStatus.toShowARModel){
            ARQuickLookView()
                .environmentObject(appStatus)
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
        HomeView()
            .previewDevice("iPhone 14 Pro")
            //.previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
        
        HomeView()
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
        
        SpecialEventView(titleText: "WWDC", eventRange: [21, 32])
            .environmentObject(EventSource())
            .previewInterfaceOrientation(.landscapeLeft)
        
        SpecialEventView(titleText: "WWDC", eventRange: [21, 32])
            .environmentObject(EventSource())
            .previewDevice("iPhone 14 Pro")
            .preferredColorScheme(.dark)
    }
}
