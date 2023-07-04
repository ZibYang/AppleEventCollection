//
//  EventDetailView.swift
//  Special Event
//
//  Created by zzy on 2023/5/27.
//  Copyright © 2023 Personal usage. All rights reserved.
//

import SwiftUI

struct EventDetailView: View {
    var event: AppleEvent
    
    var body: some View {
        ZStack{
            LinearGradient.linearGradient(
                colors: event.backgroundColor,
                startPoint: event.bgcStart,
                endPoint: event.bgcEnd)
            .ignoresSafeArea()
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 0){
                    Image(event.thumbnail)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack(alignment: .leading){
                        HStack {
                            Text(event.title)
                                .font(.title2)
                                .bold()
                                .foregroundStyle(.linearGradient(
                                    colors: event.titleColorSet,
                                    startPoint: event.tcStart, endPoint: event.tcEnd))
                        }
                        .padding(.bottom)
                        
                        Text(event.time)
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Text(event.detail)
                            .foregroundColor(event.mainColor)
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing, event.modelName != "" ? 100 : 20)
                        
                        ForEach(0..<event.sectionTitle.count, id: \.self){i in
                            VStack(alignment: .leading){
                                Text(event.sectionTitle[i])
                                    .font(.caption)
                                    .foregroundColor(.gray.opacity(0.5))
                                    .padding([.top, .leading])
                                VStack{
                                    ForEach(event.bigAttachmentIndex[i]..<event.bigAttachmentIndex[i+1], id: \.self){ j in
                                        HStack(alignment: .top){
                                            Image(event.bigAttachmentList[j])
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(maxWidth: event.thumbnail.contains("ADA") ? 60 : 120,
                                                       maxHeight: event.thumbnail.contains("ADA") ? 60 : 90, alignment: .leading)
                                                .cornerRadius(12)
                                            Text(event.bigAttachmentTitle[j])
                                                .font(.headline)
                                            Spacer()
                                            if event.bigAttachmentID.count > j{
                                                Text("view in app store")
                                                    .font(Font.callout)
                                                    .padding()
                                                    .background(.ultraThinMaterial)
                                                    .cornerRadius(15)
                                            }
                                        }
                                    }
                                    
                                    ScrollView(.horizontal, showsIndicators: false){
                                        HStack{
                                            ForEach(event.smallAttachmentIndex[i]..<event.smallAttachmentIndex[i+1], id: \.self){ j in
                                                VStack{
                                                    Image(event.smallAttachmentList[j])
                                                        .resizable()
                                                        .frame(maxWidth: 40, maxHeight: 40)
                                                    Text(event.smallAttachmentTitle[j])
                                                        .font(.caption)
                                                        .lineLimit(1)
                                                }
                                                .frame(width: 60)
                                            }
                                            Spacer()
                                        }
                                    }
                                    .padding(.vertical)
                                }
                                .padding()
                                .mySectionModifier()
                            }
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .bottomLeading)
                    .padding()
                    .padding(.horizontal)
                }
                .background(.linearGradient(
                    colors: event.backgroundColor,
                    startPoint: event.bgcStart,
                    endPoint: event.bgcEnd))
            }
        }
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
