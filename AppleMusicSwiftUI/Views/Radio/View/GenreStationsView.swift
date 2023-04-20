//
//  GenreStationsView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 08.04.2023.
//

import SwiftUI

struct GenreStationsView: View {
    @ObservedObject private var model = ModelGenreStation()
    
    let columns = [GridItem()]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            Section(header: Text("Станции")
                .font(.title)
                .fontWeight(.bold)
                .frame(height: 50)) {
                    ForEach(model.models, id: \.id) { model in
                        HStack {
                            Image(model.image)
                                .resizable()
                                .frame(width: 130, height: 130)
                                .cornerRadius(10)
                            VStack(alignment: .leading) {
                                Text(model.title)
                                Text(model.footer)
                                    .foregroundColor(.secondary)
                            }
                        }
                        Divider()
                    }
            }
        }
    }
}

struct GenreStationsView_Previews: PreviewProvider {
    static var previews: some View {
        GenreStationsView()
    }
}
