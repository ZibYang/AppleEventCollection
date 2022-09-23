//
//  AppleEventList.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI

let appleEventList = [
    AppleEvent(
        titleColorSet: [.blue, .white, .blue, .white, .yellow],
        time: "September 7, 2022",
        title: "Far out.",
        detail: "Introducing an all-new iPhone lineup, rebuilt AirPods Pro, three new Apple Watch models, and an exciting update to Apple Fitness+.",
        thumbnail: "apple_event_22_9_7",
        modelName: "apple_event_22_9_7",
        modelExtension: "reality",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 5],
        bigAttachmentList: ["iPhone14Pro", "iPhone14", "AppleWatchS8", "AppleWatchUltra", "AirPodsPro2"],
        bigAttachmentTitle: ["iPhone 14 Pro", "iPhone 14", "Apple Watch S8", "Apple Watch Ultra", "AirPods Pro 2"]
    ),
    AppleEvent(
        titleColorSet: [.blue, .purple, .pink, .red, .orange, .yellow],
        time: "March 8, 2022",
        title: "Peek perfomance.",
        detail: "Introducing the all-new Mac Studio and Studio Display, new iPad Air, new iPhone SE, and iPhone 13 and iPhone 13 Pro in two new shades of green.",
        thumbnail: "apple_event_22_3_8",
        modelName: "apple_event_22_3_8",
        modelExtension: "reality",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 4],
        bigAttachmentList: ["macStudio&Display", "iPhone13Green", "iPhoneSE3", "iPadAirM1"],
        bigAttachmentTitle: ["Mac Studio and Studio Display", "iPhone 13 (Green)", "iPhone se3", "iPad Air (M1 chip)"]
    ),
    AppleEvent(
        titleColorSet: [.white, Color(red: 114/255, green: 154/255, blue: 248/255)],
        time: "October 18, 2021",
        title: "Unleashed.",
        detail: "Introducing the new MacBook Pro with M1 Pro or M1 Max, all-new AirPods, and HomePod mini in five bold colors.",
        thumbnail: "apple_event_21_10_18",
        modelName: "apple_event_21_10_18",
        modelExtension: "reality",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 3],
        bigAttachmentList: ["macBookPro14&16", "HomePodMini", "AirPods3"],
        bigAttachmentTitle: ["MacBook Pro 14 & 16 (M1 Pro and M1 Max chip)", "HomePod mini", "AirPods 3"]
    ),
    AppleEvent(
        titleColorSet: [Color(red: 29/255, green: 53/255, blue: 86/255), Color(red: 244/255, green: 187/255, blue: 204/255)],
        tcStart: .top,
        tcEnd: .bottom,
        time: "September 14, 2021",
        title: "California streaming.",
        detail: "Introducing iPhone 13 Pro, iPhone 13, Apple Watch Series 7, and the new iPad mini and iPad.",
        thumbnail: "apple_event_21_9_14",
        modelName: "apple_event_21_9_14",
        modelExtension: "reality",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 5],
        bigAttachmentList: ["iPhone13", "iPhone13Pro", "AppleWatchS7", "iPadmini", "iPad"],
        bigAttachmentTitle: ["iPhone 13", "iPhone 13 Pro", "Apple Watch S7", "iPad mini", "iPad"]
    ),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [Color(red: 245/255, green: 245/255, blue: 247/255)],
        titleColorSet: [
            Color(red: 55/255, green: 126/255, blue: 147/255),
            Color(red: 181/255, green: 211/255, blue: 107/255),
            Color(red: 247/255, green: 207/255, blue: 70/255),
            Color(red: 240/255, green: 152/255, blue: 102/255),
            Color(red: 218/255, green: 84/255, blue: 69/255),
            Color(red: 232/255, green: 144/255, blue: 163/255),
            Color(red: 148/255, green: 98/255, blue: 183/255),
            Color(red: 65/255, green: 100/255, blue: 188/255),
            Color(red: 129/255, green: 177/255, blue: 221/255), ],
        time: "April 20, 2021",
        title: "Spring Loaded",
        detail: "Introducing the new iMac, iPad Pro, iPhone 12 in purple, AirTag, and Apple TV 4K.",
        thumbnail: "apple_event_21_4_20",
        modelName: "apple_event_21_4_20",
        modelExtension: "usdz",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 5],
        bigAttachmentList: ["iPhone12Purple", "iMacM1", "iPadPro2021", "AirTag", "AppleTV4K"],
        bigAttachmentTitle: ["iPhone 12 Purple", "iMac with M1", "iPad Pro with M1", "AirTag", "Apple TV 4K"]
    ),
    AppleEvent(
        titleColorSet: [.purple, .pink, .orange, .yellow, Color(red: 196/255, green: 197/255, blue: 200/255), .blue],
        time: "November 10, 2020",
        title: "One more thing.",
        detail: "Introducing the new MacBook Air, 13‑inch MacBook Pro, and Mac mini, all with the Apple M1 chip.",
        thumbnail: "apple_event_20_11_10",
        modelName: "apple_event_20_11_10",
        modelExtension: "usdz",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 3],
        bigAttachmentList: ["MacbookAirM1", "MacbookProM1", "Macmini"],
        bigAttachmentTitle: ["Macbook Air with M1", "Macbook Pro with M1", "Mac mini with M1"]
    ),
    AppleEvent(
        time: "October 13, 2020",
        title: "Hi, Speed.",
        detail: "Introducing iPhone 12 and iPhone 12 Pro with 5G, MagSafe accessories, and HomePod mini.",
        thumbnail: "apple_event_20_10_13",
        modelName: "apple_event_20_10_13",
        modelExtension: "usdz",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 3],
        bigAttachmentList: ["HomePodMini2", "iPhone12", "iPhone12Pro"],
        bigAttachmentTitle: ["HomePod mini", "iPhone 12", "iPhone 12 Pro"]
    ),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [Color(red: 25/255, green: 59/255, blue: 134/255),Color(red: 192/255, green: 224/255, blue: 247/255)],
        time: "September 15, 2020",
        title: "Time files.",
        detail: "Introducing Apple Watch Series 6, Apple Watch SE, Apple Fitness+, the new iPad Air and iPad, and Apple One — the all-new Apple services bundle.",
        thumbnail: "apple_event_20_9_15",
        modelName: "apple_event_20_9_15",
        modelExtension: "usdz"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.green.opacity(0.5), .blue.opacity(0.5), .yellow.opacity(0.5), .red.opacity(0.5), .purple.opacity(0.5)],
        time: "September 10, 2019",
        title: "By innovation only.",
        detail: "Announcing the new iPhone 11 Pro, iPhone 11, Apple Watch Series 5, and iPad.",
        thumbnail: "apple_event_19_9_10"),
    AppleEvent(
        time: "March 25, 2019",
        title: "It's show time.",
        detail: "Announcing the new Apple TV+, Apple News+, Apple Arcade, and Apple Card.",
        thumbnail: "apple_event_19_3_25"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "October 30, 2018",
        title: "There's more in the making.",
        detail: "Announcing the new iPad Pro, MacBook Air, and Mac mini.",
        thumbnail: "apple_event_18_10_30"),
    AppleEvent(
        time: "September 12, 2018",
        title: "Gather round.",
        detail: "Announcing the new iPhone XS, iPhone XS Max, iPhone XR, and Apple Watch Series 4.",
        thumbnail: "apple_event_18_9_12"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "March 27, 2018",
        title: "Let’s take a field trip.",
        detail: "Announcing the new iPad, which now supports Apple Pencil, and how teachers everywhere are using it to ignite creativity in their students.",
        thumbnail: "apple_event_18_3_27"),
    AppleEvent(
        time: "September 12, 2017",
        title: "Let’s meet at our place.",
        detail: "Announcements included a new generation of iPhone, Apple Watch with cellular connectivity, Apple TV 4K, and much more.",
        thumbnail: "apple_event_17_9_12"),
    AppleEvent(
        time: "October 27, 2016",
        title: "hello again",
        detail: "Take a look at our latest announcements, including the all-new MacBook Pro and the TV App for Apple TV.",
        thumbnail: "apple_event_16_10_27"),
    AppleEvent(
        time: "September 7, 2016",
        title: "See you on the 7th.",
        detail: "Watch the live event and check out the iPhone 7 and 7 Plus, the Apple Watch Series 2, and the wireless AirPods.",
        thumbnail: "apple_event_16_9_7"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "March 21, 2016",
        title: "Let us loop you in.",
        detail: "Check out our live event and watch the introduction of the stunning 9.7-inch iPad Pro, beautiful new bands for Apple Watch, and iPhone SE — the most powerful 4‑inch phone ever.",
        thumbnail: "apple_event_16_3_21"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        time: "September 9, 2015",
        title: "\"Hey Siri, give us a hint.\"",
        detail: "Check out iPhone 6s and iPhone 6s Plus, learn about the powerful iPad Pro, take a look at the new features and bands for Apple Watch, and see the premiere of the all-new Apple TV.",
        thumbnail: "apple_event_15_9_9"),
    AppleEvent(
        titleColorSet: [.black],
        time: "March 9, 2015",
        title: "Spring forward.",
        detail: "Get an in-depth look at Apple Watch, witness the unveiling of the new MacBook, and learn about the innovations in ResearchKit.",
        thumbnail: "apple_event_15_3_9"),
    
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "October 16, 2014",
        title: "It's been way too long.",
        detail: "Get a first look at iMac with Retina 5K display and iPad Air 2, and learn about the release of OS X Yosemite.",
        thumbnail: "apple_event_14_10_16"),
    
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "September 9, 2014",
        title: "Wish we could say more.",
        detail: "From the launch of Apple Watch to the arrival of iPhone 6 to a live performance from U2, this is an event not to be missed.",
        thumbnail: "apple_event_14_9_9"),
]

