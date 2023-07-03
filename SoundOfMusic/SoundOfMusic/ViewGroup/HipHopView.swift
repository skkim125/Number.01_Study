//
//  HipHopView.swift
//  SoundOfMusic
//
//  Created by 김상규 on 2023/07/03.
//

import SwiftUI

struct HipHopView: View {
    var body: some View {
        VStack {
            List(HipHops) { hiphop in
                Section{
                    AsyncImage(url: URL(string: hiphop.albumCover)) { image in
                        
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 300, height: 300, alignment: .center)
                    
                } header: {
                    Text("\(hiphop.songName)")
                        .font(.system(size: 30,weight: .bold))
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct HiphopView_Previews: PreviewProvider {
    static var previews: some View {
        HipHopView()
    }
}
