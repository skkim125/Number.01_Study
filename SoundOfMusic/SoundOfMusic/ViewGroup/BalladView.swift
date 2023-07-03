//
//  BalladView.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import SwiftUI

struct BalladView: View {
    var body: some View {
        List(Ballads){ music in
            VStack(alignment: .leading){
                Text("\(music.songName)")
                    .font(.largeTitle).bold()
                AsyncImage(url: URL(string: music.albumCover)) { image in
                    
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                    
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 300, alignment: .center)
                
                Text("Artist: \(music.singer)").bold()
                Text("길이: \(music.musicTime)")
                    .font(.caption)
                Text("발매: \(music.releaseYear)")
                Text("\(music.isAlcoholString)")
            }
        }
    }
}

struct BalladView_Previews: PreviewProvider {
    static var previews: some View {
        BalladView()
    }
}
