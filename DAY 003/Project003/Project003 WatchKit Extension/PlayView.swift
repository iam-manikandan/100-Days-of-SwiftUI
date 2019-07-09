//
//  PlayView.swift
//  Project003 WatchKit Extension
//
//  Created by Rudrank Riyam on 09/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI

struct PlayView : View {

    var songName : String
    var albumName : String

    var body: some View {
        VStack {
            Text(songName)
                .font(.headline)
                .padding(.top)

            Text(albumName)
                .padding(.bottom)

            HStack {
                Image(systemName: "backward.fill")
                Spacer()
                Image(systemName: "pause.fill")
                    .font(.title)
                Spacer()
                Image(systemName: "forward.fill")
            }
            .padding(.horizontal, 22)
            Spacer()
            Image(systemName: "volume.2.fill")
                .font(.title)
        }
    }
}

#if DEBUG
struct PlayView_Previews : PreviewProvider {
    static var previews: some View {
        PlayView(songName: "Grenade", albumName: "Doo-Wops & Hooligans")
    }
}
#endif
