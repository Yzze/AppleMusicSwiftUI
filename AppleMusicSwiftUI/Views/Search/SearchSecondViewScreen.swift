//
//  SearchSecondViewScreen.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 20.04.2023.
//

import SwiftUI

struct SearchSecondViewScreen: View {
    
    @State var detailScreen = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            RadioStationView()
                .padding(.bottom, 30)
            SearchSecondViewGenre()
        }
        .padding()
        .padding(.bottom, 50)
    }
}

struct SearchSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchSecondViewScreen()
    }
}
