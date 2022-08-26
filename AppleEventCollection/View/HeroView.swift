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
    @State private var showDetail = false
    
    var event: AppleEvent

    var body: some View{
        ZStack(alignment: .bottomTrailing){
            ZStack(alignment: .bottom){
                VStack(alignment: .leading, spacing: 0){
                    Image(event.thumbnail)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                    if(showDetail){
                        VStack(alignment: .leading){
                            HStack {
                                Text(event.title)
                                    .font(.title2)
                                    .bold()
                                    .foregroundStyle(.linearGradient(
                                        colors: event.titleColorSet,
                                        startPoint: event.tcStart, endPoint: event.tcEnd))
                                    .padding(.bottom)
                            }
                            Text(event.time)
                                .font(.headline)
                                .foregroundColor(.gray)
                            
                            Text(event.detail)
                                .foregroundColor(event.mainColor)
                                .lineLimit(2)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, event.modelName != "" ? 100 : 20)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                        .padding()
                    }
                }
                .background(.linearGradient(
                    colors: event.backgroundColor,
                    startPoint: event.bgcStart,
                    endPoint: event.bgcEnd))
            }
            
            if( event.modelName != ""){
                Image(systemName: "arkit")
                    .foregroundColor(event.mainColor)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                    .padding(.trailing, showDetail ? 12 : 0)
                    .padding(.bottom, showDetail ? 12 : 0)
                    .onTapGesture {
                        appStatus.pickedModelName = event.modelName
                        appStatus.pickedModelExtension = event.modelExtension
                        appStatus.checkModelExisted()
                    }
            }
        }
        .alert("Model: \(appStatus.pickedModelName).\(appStatus.pickedModelExtension) doesn't exist", isPresented: $appStatus.showErrorAlert){
            Button("OK", role: .cancel) { }
        }
        .onTapGesture {
            withAnimation(.easeInOut){
                showDetail.toggle()
            }
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
