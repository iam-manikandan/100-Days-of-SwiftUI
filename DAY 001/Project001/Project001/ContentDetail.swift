//
//  ContentDetail.swift
//  Project001
//
//  Created by Rudrank Riyam on 07/07/19.
//  Copyright © 2019 100DaysOfSwiftUI. All rights reserved.
//

import SwiftUI

struct ContentDetail : View {

    var titleName : String

    var body: some View {
        VStack {
            Image("Landscape - \(titleName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding()
            Text(titleName)
                .font(.title)
            Spacer()
        }
    }
}

#if DEBUG
struct ContentDetail_Previews : PreviewProvider {
    static var previews: some View {
        ContentDetail(titleName: "Mountains")
    }
}
#endif
