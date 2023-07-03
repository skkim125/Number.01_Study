//
//  Ballad.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import Foundation

class Ballad: Music {
    var isAlcohol: Bool
    
    var isAlcoholString: String {
        get {
            if isAlcohol {
                return "술이 들어간 노래"
            } else {
                return "일반 노래"
            }
        }
    }
    
    init(songName: String, genre: Genre, musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String, isAlcohol: Bool) {
        self.isAlcohol = isAlcohol
        
        super.init(songName: songName, genre: genre, musicTime: musicTime, releaseYear: releaseYear, singer: singer, albumCover: albumCover, gender: gender)
    }
    
}
