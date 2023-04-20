//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 02.04.2023.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var showingPopover = false
    
    var body: some View {
        HStack {
            HStack {
                Button {
                    showingPopover = true
                } label: {
                    Image("albumImg")
                        .shadow(radius: 5)
                }
                
                Button {
                    showingPopover = true
                } label: {
                    Text("Linkin Park - Numb")
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .popover(isPresented: $showingPopover) {
                DetailPlayerView()
            }
            
            Button {} label: {
                Image(systemName: "play.fill")
                    .padding(.trailing, 10)
                    .foregroundColor(.black)
            }
            
            Button {} label: {
                Image(systemName: "forward.fill")
                    .padding(.trailing, 10)
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
