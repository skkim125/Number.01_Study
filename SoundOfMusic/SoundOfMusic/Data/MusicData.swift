//
//  MusicData.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import Foundation
import SwiftUI

let HypeBoy: Dance = Dance(songName: "Hype Boy",genre: .dance, musicTime: "02:59", releaseYear: 2022, singer: "New Jeans", albumCover: "https://image.bugsm.co.kr/album/images/1000/40780/4078016.jpg", gender: "여성", isGroup: true)

let iAm: Dance = Dance(songName: "I AM",genre: .dance, musicTime: "03:04", releaseYear: 2023, singer: "IVE", albumCover: "https://image.bugsm.co.kr/album/images/1000/40849/4084947.jpg", gender: "여성", isGroup: true)

let redFlavor: Dance = Dance(songName: "빨간 맛",genre: .dance, musicTime: "03:11", releaseYear: 2017, singer: "Red Velvet", albumCover: "https://image.bugsm.co.kr/album/images/500/201072/20107250.jpg", gender: "여성", isGroup: true)

let hogu: HipHop = HipHop(songName: "호구", genre: .hiphop, musicTime: "03:51", releaseYear: 2015, singer: "기리보이", albumCover: "https://image.bugsm.co.kr/album/images/1000/200151/20015131.jpg", gender: "남성", featuring: true, rapStyle: .singing)

let timeTravel: HipHop = HipHop(songName: "Time Travel", genre: .hiphop, musicTime: "04:01", releaseYear: 2016, singer: "빈지노", albumCover: "https://t2.genius.com/unsafe/252x252/https%3A%2F%2Fimages.genius.com%2F622920b6621c971959b9819b99c8b48f.600x600x1.jpg", gender: "남성", featuring: false, rapStyle: .singing)

let theTimeGoeson: HipHop = HipHop(songName: "The Time Gose On", genre: .hiphop, musicTime: "05:22", releaseYear: 2015, singer: "BewhY", albumCover: "https://image.bugsm.co.kr/album/images/500/4886/488699.jpg", gender: "남성", featuring: false, rapStyle: .boombap)


let heaven: Ballad = Ballad(songName: "Heaven", genre: .ballad, musicTime: "04:39", releaseYear: 2002, singer: "김현성", albumCover: "https://image.bugsm.co.kr/album/images/1000/136/13611.jpg", gender: "남성", isAlcohol: false)


let present: Ballad = Ballad(songName: "선물", genre: .ballad, musicTime:  "04:22", releaseYear: 2017, singer: "멜로망스", albumCover: "https://cdnimg.melon.co.kr/cm/album/images/100/78/176/10078176_1000.jpg?fc3fe8c6bd74c16bce7ffd971a930ffa/melon/quality/80/optimize", gender: "남성", isAlcohol: false)


let hello: Ballad = Ballad(songName: "Hello", genre: .ballad, musicTime: "04:11", releaseYear: 2011, singer: "허각", albumCover: "https://image.bugsm.co.kr/album/images/500/2994/299496.jpg", gender: "남성", isAlcohol: false)






let Musics: [Music] = [HypeBoy, iAm, redFlavor]
let Dances: [Dance] = [HypeBoy, iAm, redFlavor]
let HipHops: [HipHop] = [timeTravel, hogu, theTimeGoeson]
let Ballads: [Ballad] = [heaven, present, hello]

