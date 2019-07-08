//
//  SongsView.swift
//  Project002
//
//  Created by Rudrank Riyam on 08/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI

struct SongsView : View {
    var body: some View {
        NavigationView {
            List(songDescriptions.identified(by: \.songName)) { songDescription in
                HStack {
                    Image(songDescription.albumName)
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                        .padding()
                    VStack (alignment: .leading) {
                        Text(songDescription.songName)
                            .font(.headline)
                            .padding(2)
                        Text(songDescription.albumName)
                            .font(.subheadline)
                    }
                }
            }
            .navigationBarTitle("Bruno Mars")
        }
    }
}

#if DEBUG
struct SongsView_Previews : PreviewProvider {
    static var previews: some View {
        SongsView()
    }
}
#endif
