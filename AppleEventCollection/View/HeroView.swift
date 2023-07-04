//
//  HeroView.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

struct HeroView: View{
    @EnvironmentObject var appStatus: AppStatus
    var event: AppleEvent

    var body: some View{
        ZStack(alignment: .bottomTrailing){
            Image(event.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                
            if( event.modelName != ""){
                Image(systemName: "arkit")
                    .foregroundColor(event.mainColor)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .padding(.trailing, 12)
                    .padding(.bottom, 12)
                    .onTapGesture {
                        print("going to show ARModel")
                        appStatus.pickedModelName = event.modelName
                        appStatus.pickedModelExtension = event.modelExtension
                        appStatus.checkModelExisted()
                    }
            }
        }
        //.frame(maxHeight: showDetail ? 1000 : 300)
        
        //.border(.green, width: 5)
        .alert("Model: \(appStatus.pickedModelName).\(appStatus.pickedModelExtension) doesn't exist", isPresented: $appStatus.showErrorAlert){
            Button("OK", role: .cancel) { }
        }
    }
    
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}


struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
        
        HeroView(
            event: AppleEvent(
                time: "June, 2021",
                title: "Apple Design Award 2021.",
                detail: "Apple Design Award 2021.",
                thumbnail: "ADA21")
        )
        .environmentObject(AppStatus())
        .previewLayout(.fixed(width: 800, height: 650))
        
        HeroView(
            event: AppleEvent(
                mainColor: .white,
                backgroundColor: [.black],
                titleColorSet: [.white],
                time: "March 8, 2022",
                title: "Peek perfomance.",
                detail: "Introducing the all-new Mac Studio and Studio Display, new iPad Air, new iPhone SE, and iPhone 13 and iPhone 13 Pro in two new shades of green.",
                thumbnail: "apple_event_22_3_8",
                modelName: "apple_event_22_3_8",
                modelExtension: "reality")
        )
        .environmentObject(AppStatus())
        .previewLayout(.fixed(width: 800, height: 650))
    }
}
