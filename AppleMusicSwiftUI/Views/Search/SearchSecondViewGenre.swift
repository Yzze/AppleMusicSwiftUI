//
//  SearchSecondViewGenre.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 20.04.2023.
//

import SwiftUI

struct SearchSecondViewGenre: View {
   @ObservedObject private var model = ModelGenreStation()
    
    private var rows = [GridItem()]
    
    var body: some View {
        VStack {
            HStack {
                Text("Станции")
                    .font(.title)
                    .bold()
                Spacer()
                Button {
                } label: {
                    Text("См. все")
                        .font(.system(size: 22))
                        .foregroundColor(.red)
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(model.models, id: \.id) { model in
                        Image(model.image)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct SearchSecondGenre_Previews: PreviewProvider {
    static var previews: some View {
        SearchSecondViewGenre()
    }
}
