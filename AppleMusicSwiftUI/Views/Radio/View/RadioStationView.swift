//
//  RadioStationView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 08.04.2023.
//

import SwiftUI

struct RadioStationView: View {
    private var models = ModelRadioView()
        
    var rows = [GridItem()]
        
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(models.models, id: \.id) { model in
                    VStack(alignment: .leading) {
                        Divider()
                        Text(model.top)
                            .foregroundColor(.secondary)
                        Text(model.middle)
                            .font(.title)
                        Text(model.bottom)
                            .foregroundColor(.secondary)
                        Image(model.image)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct RadioStationView_Previews: PreviewProvider {
    static var previews: some View {
        RadioStationView()
    }
}
