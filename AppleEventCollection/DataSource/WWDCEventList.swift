//
//  WWDCEventList.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI


let WWDCEventList = [
    AppleEvent(
        time: "June 6, 2022",
        title: "Code one, code all.",
        detail: "Announcing Apple's biggest updates ever to iOS, iPadOS, watchOS — and what's more? Let's find out.",
        thumbnail: "wwdc22_6_6",
        modelName: "apple_event_en_",
        modelExtension: "usdz",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 2],
        bigAttachmentList: ["macbookAirM2", "macbookPro13M2"],
        bigAttachmentTitle: ["Macbook Air with M2 chip", "Macbook Pro 13-inch with M2"],
        smallAttachmentIndex: [0, 5],
        smallAttachmentList: ["iOS16", "iPadOS16", "macOSVentura", "watchOS9", "tvOS"],
        smallAttachmentTitle: ["iOS 16", "iPadOS 16", "macOS Ventura", "watchOS 9", "tvOS 16"]
    ),
    AppleEvent(
        time: "June 6, 2021",
        title: "Glow and behold.",
        detail: "Announcing Apple's biggest updates ever to iOS, iPadOS, watchOS — and the entirely reimagined macOS Big Sur.",
        thumbnail: "wwdc21_6_6",
        sectionTitle: ["New release"],
        smallAttachmentIndex: [0, 5],
        smallAttachmentList: ["iOS15", "iPadOS15", "macOSMonterey", "watchOS8", "tvOS"],
        smallAttachmentTitle: ["iOS 15", "iPadOS 15", "macOS Monterey", "watchOS 8", "tvOS 15"]
    ),
    AppleEvent(
        time: "June 22, 2020",
        title: "Full stream ahead.",
        detail: "Announcing Apple's biggest updates ever to iOS, iPadOS, watchOS — and the entirely reimagined macOS Big Sur.",
        thumbnail: "wwdc20_6_22",
        sectionTitle: ["New release"],
        smallAttachmentIndex: [0, 5],
        smallAttachmentList: ["iOS14", "iPadOS14", "macOSBigSur", "watchOS", "tvOS"],
        smallAttachmentTitle: ["iOS 14", "iPadOS 14", "macOS BigSur", "watchOS 7", "tvOS 14"]
    ),
    AppleEvent(
        backgroundColor: [Color(red: 20/255, green: 26/255, blue: 45/255)],
        time: "June 3, 2019",
        title: "Write code. Blow minds.",
        detail: "Announcing upgraded operating systems for iPhone (iOS 14), Apple watch (watchOS 7) and Mac (macOS Catalina) - and a brand new one for iPad, iPadOS. And introducing the new Mac Pro and Pro Display XDR.",
        thumbnail: "wwdc19_6_3",
        sectionTitle: ["New release"],
        smallAttachmentIndex: [0, 5],
        smallAttachmentList: ["iOS13", "iPadOS13", "macOSCatalina", "watchOS", "tvOS"],
        smallAttachmentTitle: ["iOS 13", "iPadOS 13", "macOS Catalina", "watchOS 6", "tvOS 13"]
    ),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "June 4, 2018",
        title: "WWDC 2018",
        detail: "Announcing upgraded operating systems for iPhone and iPad, Mac, Apple Watch, and Apple TV.",
        thumbnail: "wwdc18_6_4",
        sectionTitle: ["New release"],
        smallAttachmentIndex: [0, 4],
        smallAttachmentList: ["iOS12", "macOSMojaveDark", "watchOS", "tvOS"],
        smallAttachmentTitle: ["iOS 12", "macOS Mojave", "watchOS 5", "tvOS 12"]
    ),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [Color(red: 211/255, green: 211/255, blue: 211/255)],
        titleColorSet: [.black],
        time: "June 10, 2017",
        title: "WWDC 2017.",
        detail: "Check out the full event with announcements including a new size for iPad Pro, performance boosts across the Mac family, and a breakthrough speaker with HomePod.",
        thumbnail: "wwdc17_6_10",
        sectionTitle: ["New product"],
        bigAttachmentIndex: [0, 4],
        bigAttachmentList: ["iMac5K", "iMacPro", "iPadPro10.5", "HomePod"],
        bigAttachmentTitle: ["iMac 5K 27-inch", "iMac Pro 27-inch", "iPad Pro 10.5-inch", "HomePod"],
        smallAttachmentIndex: [0, 4],
        smallAttachmentList: ["iOS11", "macOSHighSierra", "watchOS", "tvOS"],
        smallAttachmentTitle: ["iOS 11", "macOS High Sierra", "watchOS 4", "tvOS 11"]
    ),
    AppleEvent(
        backgroundColor: [Color(red: 40/255, green: 42/255, blue: 53/255)],
        titleColorSet: [.white],
        time: "June 13, 2016",
        title: "Hello, WWDC16.",
        detail: "Get a first look at iOS 10, with new features for Messages, Maps, and more. Learn about macOS Sierra, the updated tvOS, and what’s next for watchOS and Apple Pay.",
        thumbnail: "wwdc16_6_13"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        time: "June 8, 2015",
        title: "WWDC15.",
        detail: "See the announcement of Apple Music, get a preview of OS X El Capitan and iOS 9, and learn what’s next for Apple Watch and developers.",
        thumbnail: "wwdc15_6_8"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "June 4, 2014",
        title: "WWDC14.",
        detail: "Get a first look at iOS 10, with new features for Messages, Maps, and more. Learn about macOS Sierra, the updated tvOS, and what’s next for watchOS and Apple Pay.",
        thumbnail: "wwdc14_6_4"),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [.white],
        titleColorSet: [.black],
        time: "June 10, 2013",
        title: "WWDC13.",
        detail: "Get an in-depth look at what’s next in iOS and OS X, and learn how to take your apps to the next level. With over 100 sessions, extensive hands–on labs, and engaging events, you’ll connect with Apple engineers and fellow developers for an incredible week of inspiration.",
        thumbnail: "wwdc13_6_10"),
]
