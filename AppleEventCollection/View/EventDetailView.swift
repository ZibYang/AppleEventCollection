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
    @Binding var showDetail: Bool
    
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
                        .aspectRatio(contentMode: .fit)
                    
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
                            .multilineTextAlignment(.leading)
                        
                        
                        ForEach(0..<event.sectionTitle.count, id: \.self){i in
                            VStack(alignment: .leading, spacing: 0){
                                Text(event.sectionTitle[i])
                                    .font(.caption)
                                    .foregroundColor(.gray.opacity(0.8))
                                    .padding(.top)
                                    .offset(x: 3, y: -5)
                                if(event.bigAttachmentIndex[i+1] != 0){
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
                                            }
                                        }
                                        
                                    }
                                    .padding()
                                    .mySectionModifier()
                                }
                                
                                if(event.smallSectionTitle.count != 0){
                                    Text(event.smallSectionTitle[i])
                                        .font(.caption)
                                        .foregroundColor(.gray.opacity(0.8))
                                        .padding(.top)
                                        .offset(x: 3, y: -5)
                                    ScrollView(.horizontal, showsIndicators: false){
                                        HStack{
                                            Rectangle()
                                                .fill(.clear)
                                                .frame(width: 6, height: 60)
                                            ForEach(event.smallAttachmentIndex[i]..<event.smallAttachmentIndex[i+1], id: \.self){ j in
                                                VStack{
                                                    Image(event.smallAttachmentList[j])
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .frame(width: 50, height: 50)
                                                    Text(event.smallAttachmentTitle[j])
                                                        .font(.caption2)
                                                        .lineLimit(2)
                                                        .multilineTextAlignment(.center)
                                                    Spacer()
                                                }
                                                .frame(width: 100, height: 100)
                                                
                                            }
                                            Rectangle()
                                                .fill(.clear)
                                                .frame(width: 6, height: 60)
                                            Spacer()
                                        }
                                    }
                                    .padding(.top)
                                    .mySectionModifier()
                                    
                                }
                            }
                        }
                    }
                    .frame(maxHeight: .infinity, alignment: .bottomLeading)
                    .padding()
                }
                .background(.linearGradient(
                    colors: event.backgroundColor,
                    startPoint: event.bgcStart,
                    endPoint: event.bgcEnd))
            }
            
            Button(action: {
                showDetail.toggle()
            }, label: {
                Text("Close")
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(25)
        }
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
