//
//  DetailPlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 20.04.2023.
//

import SwiftUI

struct DetailPlayerView: View {
    
    @State private var startMusic = 0.0
    @State private var endMusic = -3.07
    @State private var value = 10.0
    
    var body: some View {
        VStack {
            Image(systemName: "chevron.down")
                .font(.headline)
            Spacer()
            Image("detailAlbum1")
                .cornerRadius(15)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Numb")
                        .bold(true)
                    Text("Linkin Park")
                }
                .font(.system(size: 22))
                Spacer()
                Button {
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .frame(width: 20, height: 15)
                        .foregroundColor(.black)
                }
            }
            .padding()
            .padding(.bottom, -20)
            
            VStack {
                Slider(value: $startMusic, in: 0...3.07)
                HStack {
                    Text("\(startMusic, specifier: "%.2f")")
                    Spacer()
                    Text("\(endMusic + startMusic, specifier: "%.2f")")
                }
            }
            .padding()
            .padding(.bottom, 20)
            
            HStack {
                Button {} label: {
                    Image(systemName: "backward.fill")
                        .resizable()
                        .frame(width: 50, height: 30)
                }
                Button {} label: {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.leading, 60)
                        .padding(.trailing, 60)
                }
                Button {} label: {
                    Image(systemName: "forward.fill")
                        .resizable()
                        .frame(width: 50, height: 30)
                }
            }
            .foregroundColor(.black)
            .padding(.bottom, 20)
            
            HStack {
                Image(systemName: "speaker.fill")
                Slider(value: $value, in: 0...20)
                Image(systemName: "speaker.wave.3.fill")
            }
            .padding()
            
            HStack {
                Button {} label: {
                    Image(systemName: "quote.bubble")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                Button {} label: {
                    Image(systemName: "airplayaudio")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(.leading, 60)
                        .padding(.trailing, 60)
                }
                Button {} label: {
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 25, height: 20)
                }
            }
            .padding()
            .foregroundColor(.black)
        }
        .padding()
    }
}

struct DetailPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPlayerView()
    }
}
