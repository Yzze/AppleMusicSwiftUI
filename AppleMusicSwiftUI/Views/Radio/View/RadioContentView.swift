//
//  RadioContentView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 08.04.2023.
//

import SwiftUI

struct RadioContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                RadioStationView()
                GenreStationsView()
            }
            .padding()
            .navigationTitle("Радио")
        }
    }
}

struct RadioContentView_Previews: PreviewProvider {
    static var previews: some View {
        RadioContentView()
    }
}
