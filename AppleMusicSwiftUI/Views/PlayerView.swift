//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 02.04.2023.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
            HStack {
                Image("albumImg")
                    .shadow(radius: 5)
                Text("Linkin Park - Numb")
                Spacer()
                Image(systemName: "play.fill")
                    .frame(width: 35)
                Image(systemName: "forward.fill")
                    .frame(width: 35)
                
            }
            .position(x: 180, y: 660)
            .padding()
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
