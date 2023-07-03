//
//  Music.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import Foundation

class Music: Identifiable {
    var id: UUID = UUID()
    
    var songName: String
    var genre: Genre
    var musicTime: String
    var releaseYear: Int
    var singer: String
    var albumCover: String
    var gender: String
    
    init(songName: String, genre: Genre, musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String) {
        self.songName = songName
        self.genre = genre
        self.musicTime = musicTime
        self.releaseYear = releaseYear
        self.singer = singer
        self.albumCover = albumCover
        self.gender = gender
    }
    
}

enum Genre: String {
    case dance
    case ballad
    case hiphop
    case acustic
}
