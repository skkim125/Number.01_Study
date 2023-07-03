//
//  HipHop.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import Foundation

class HipHop: Music {
    var featuring: Bool
    var rapStyle: RapStyle
    
   init(songName:String, genre: Genre, musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String, featuring: Bool, rapStyle: RapStyle) {
        self.featuring = featuring
        self.rapStyle = rapStyle
       
       super.init(songName: songName, genre: genre, musicTime: musicTime, releaseYear: releaseYear, singer: singer, albumCover: albumCover, gender: gender)
    }
}

enum RapStyle: String {
    case boombap
    case trap
    case singing
}
