//
//  DanceView.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import SwiftUI

struct DanceView: View {
    var body: some View {
        List(Dances) { dance in
            HStack {
                VStack(alignment: .leading) {
                    Text("\(dance.songName)")
                    Text("\(dance.singer)")
                        .font(.title)
                        .bold()
                    AsyncImage(url: URL(string: dance.albumCover)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 250, height: 250)
                    
                }
            }
        }
        .navigationTitle("Dance")
    }
}

struct DanceView_Previews: PreviewProvider {
    static var previews: some View {
        DanceView()
    }
}
