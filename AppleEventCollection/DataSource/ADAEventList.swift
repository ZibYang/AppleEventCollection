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
        thumbnail: "ADA21",
        sectionTitle: ["Inclusivity Winners", "Delight and Fun Winners",
                       "Interaction Winners", "Social Impact Winners",
                       "Visuals and Graphics Winners", "Innovation Winners"],
        bigAttachmentIndex: [0, 2, 4, 6, 8, 10, 12],
        bigAttachmentList: ["HoloVista", "VoiceDream",
                            "LittleOrpheus", "PokPokPlayroom",
                            "BirdAlone", "CARROT",
                            "Alba", "BeMyEyes",
                            "Genshin", "Loona",
                            "LOL", "NaadSadhana"],
        bigAttachmentTitle: ["HoloVista", "Voice Dream Reader",
                             "Little Orpheus", "Pok Pok Playroom",
                             "Bird Alone", "CARROT Weather",
                             "Alba: A Wildlife Adventure", "Be My Eyes",
                             "Genshin Impact", "Loóna",
                             "League of Legends: Wild Rift", "NaadSadhana"],
        smallAttachmentIndex: [0, 4, 8, 12, 16, 20, 24],
        smallAttachmentList: ["1Password", "AMonster'sExpendition", "Alba", "Me",
                              "PoolsuiteFM", "RakugakiAR", "Wonderbox", "SouthOfTheCircle",
                              "Craft", "Nova", "Sp!ng", "Wonderbox",
                              "Brief", "IfFound", "Klima", "Attentat1942",
                              "BeyondASteelSky", "MissionToMarsAR", "(NotBoring)Weather", "LittleOrpheus",
                              "BirdAlone", "BlindDrive", "MuseumAlive", "Universe"],
        smallAttachmentTitle: ["1Password", "A Monster's Expendition", "Alba: A Wildlife Adventure", "Me: A Kid's Diary by Tinybop",
                               "Poolsuite FM", "RakugakiAR", "Wonderbox", "South of the Circle",
                               "Craft", "Nova", "Sp!ng", "Wonderbox",
                              "Brief", "If Found...", "Klima", "Attentat1942",
                              "Beyond a Steel Sky", "Mission To MarsAR", "(NotBoring) Weather", "Little Orpheus",
                              "Bird Alone", "Blind Drive", "Museum Alive", "Universe"]
    ),
    AppleEvent(
        time: "June, 2020",
        title: "Apple Design Award 2020.",
        detail: "Apple Design Award 2020.",
        thumbnail: "ADA20",
        sectionTitle: ["Winners"],
        bigAttachmentIndex: [0, 8],
        bigAttachmentList: ["Shapr3D", "Looom","StaffPad","Darkroom",
                            "SayonaraWildHearts", "SongOfBloom",
                            "WhereCardsFall", "Sky"],
        bigAttachmentTitle: ["Shapr 3D", "Looom","StaffPad","Darkroom",
                             "Sayonara Wild Hearts", "Song Of Bloom",
                             "Where Cards Fall", "Sky: Children of the Light"]
    ),
    AppleEvent(
        backgroundColor: [Color(red: 18/255, green: 28/255, blue: 58/255)],
        time: "June, 2019",
        title: "Apple Design Award 2019.",
        detail: "Apple Design Award 2019.",
        thumbnail: "ADA19",
        sectionTitle: ["Winners"],
        bigAttachmentIndex: [0, 9],
        bigAttachmentList: ["Ordia", "FlowByMoleskine","TheGardensBetween","Asphalt9",
                            "PixelmatorPhoto", "ELOH",
                            "Butterfly", "Thumper", "HomeCourt"],
        bigAttachmentTitle: ["Ordia", "Flow by Moleskine","The Gardens Between","Asphalt 9: Legends",
                             "Pixelmator Photo", "ELOH",
                             "Butterfly iQ — Ultrasound", "Thumper: Pocket Edition", "HomeCourt - The Basketball App"]
    ),
    AppleEvent(
        mainColor: .black,
        backgroundColor: [Color(red: 233/255, green: 234/255, blue: 233/255)],
        titleColorSet: [.black],
        time: "June, 2018",
        title: "Apple Design Award 2018.",
        detail: "Apple Design Award 2018.",
        thumbnail: "ADA18",
        sectionTitle: ["Winners"],
        bigAttachmentIndex: [0, 10],
        bigAttachmentList: ["Agenda", "BANDIMAL","Calzy","iTranslate",
                            "TritonSponge", "Florence",
                            "Playdead’sINSIDE", "Alto’sOdyssey", "Frost",
                            "Oddmar"],
        bigAttachmentTitle: ["Agenda - A new take on notes", "BANDIMAL",
                             "Calzy","iTranslate Converse",
                             "Triton Sponge", "Florence",
                             "Playdead’s INSIDE", "Alto’s Odyssey", "Frost", "Oddmar"]
    ),
    AppleEvent(
        backgroundColor: [Color(red: 18/255, green: 19/255, blue: 16/255)],
        titleColorSet: [.white],
        time: "June, 2017",
        title: "Apple Design Award 2017.",
        detail: "Apple Design Award 2017.",
        thumbnail: "ADA17",
        sectionTitle: ["Winners"],
        bigAttachmentIndex: [0, 12],
        bigAttachmentList: ["Blackbox", "SplitterCritters",
                            "Mushroom11","OldMan'sJourney",
                            "Severed", "Lake",
                            "Bear", "KitchenStories",
                            "Things3", "Elk",
                            "Enlight", "AirMail3"],
        bigAttachmentTitle: ["Blackbox", "Splitter Critters",
                             "Mushroom11","Old Man's Journey",
                             "Severed", "Lake",
                             "Bear", "Kitchen Stories", "Things3",
                             "Elk", "Enlight", "AirMail 3"]),
]
