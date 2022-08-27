//
//  ADAEventList.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//
import SwiftUI

let ADAEventList = [
    AppleEvent(
        time: "June, 2022",
        title: "Apple Design Award 2022.",
        detail: "Apple Design Award 2022.",
        thumbnail: "ADA22",
        sectionTitle: ["Inclusivity Winners", "Delight and Fun Winners",
                       "Interaction Winners", "Social Impact Winners",
                       "Visuals and Graphics Winners", "Innovation Winners"],
        bigAttachmentIndex: [0, 2, 4, 6, 8, 10, 12],
        bigAttachmentList: ["WyldeFlowers", "Procreate",
                            "Overboard!", "Habits",
                            "AMusicStory", "Slopes",
                            "Gibbon", "RebelGirls",
                            "HalideMarkII", "LEGO",
                            "MarvelFutureRevolution", "Odio"],
        bigAttachmentTitle: ["Wylde Flowers", "Procreate",
                             "Overboard!", "(Not Boring) Habits",
                             "A Music Story", "Slopes",
                             "Gibbon: Beyond the Trees", "RebelGirls",
                             "Halide Mark II", "LEGO® Star Wars™: Castaways",
                             "Marvel Future Revolution", "Odio"],
        smallAttachmentIndex: [0, 4, 8, 12, 16, 20, 24],
        smallAttachmentList: ["LetterRooms", "Noted.", "Navi", "tint.",
                              "Chineasy", "Moncage", "PleaseTouchTheArtWork", "Waterllama",
                              "Gibbon", "Transit", "Vectornator", "WhatRemainsOf",
                              "ActiveArcade", "Empathy", "HeadSpace", "WyldeFlowers",
                              "AlienIsolation", "BehindTheFrame", "MDClock", "Habits",
                              "ActiveArcade", "FocusNoodles", "Procreate", "Townscaper"],
        smallAttachmentTitle: ["Letter Rooms", "Noted.", "Navi", "tint.",
                               "Chineasy", "Moncage", "Please, Touch The Artwork", "Waterllama",
                              "Gibbon: Beyond the Trees", "Transit", "Vectornator", "What Remains Of Eidth Finch",
                              "Active Arcade", "Empathy", "HeadSpace", "WyldeFlowers",
                              "Alien Isolation", "Behind The Frame", "MD Clock", "(Not Boring) Habits",
                              "Active Arcade", "Focus Noodles", "Procreate", "Townscaper"]
    ),
    AppleEvent(
        backgroundColor: [Color(red: 11/255, green: 9/255, blue: 12/255)],
        time: "June, 2021",
        title: "Apple Design Award 2021.",
        detail: "Apple Design Award 2021.",
        thumbnail: "ADA21"),
    AppleEvent(
        time: "June, 2020",
        title: "Apple Design Award 2020.",
        detail: "Apple Design Award 2020.",
        thumbnail: "ADA20"),
    AppleEvent(
        backgroundColor: [Color(red: 18/255, green: 28/255, blue: 58/255)],
        time: "June, 2019",
        title: "Apple Design Award 2019.",
        detail: "Apple Design Award 2019.",
        thumbnail: "ADA19"),
    AppleEvent(
        backgroundColor: [Color(red: 233/255, green: 234/255, blue: 233/255)],
        time: "June, 2018",
        title: "Apple Design Award 2018.",
        detail: "Apple Design Award 2018.",
        thumbnail: "ADA18"),
    AppleEvent(
        backgroundColor: [Color(red: 18/255, green: 19/255, blue: 16/255)],
        titleColorSet: [.white],
        time: "June, 2017",
        title: "Apple Design Award 2017.",
        detail: "Apple Design Award 2017.",
        thumbnail: "ADA17"),
]
