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
                Button {} label: {
                    Image(systemName: "play.fill")
                        .frame(width: 35)
                        .foregroundColor(.black)
                }
                Button {} label: {
                    Image(systemName: "forward.fill")
                        .frame(width: 35)
                        .foregroundColor(.black)
                }
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
