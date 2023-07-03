//
//  Dance.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import Foundation

class Dance: Music {
    var isGroup: Bool
    var isGroupString: String{
        get{
            if isGroup {
                return "댄스 그룹"
            } else {
                return "댄스 솔로"
            }
        }
    }
    
    
    init(songName:String, genre: Genre, musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String, isGroup: Bool) {
        self.isGroup = isGroup
        
        super.init(songName: songName, genre: genre, musicTime: musicTime, releaseYear: releaseYear, singer: singer, albumCover: albumCover, gender: gender)
    }
    
}
