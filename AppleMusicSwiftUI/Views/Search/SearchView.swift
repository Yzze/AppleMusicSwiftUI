//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 20.04.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var detailScreen = false
    
    var body: some View {
        NavigationView {
            if detailScreen {
                VStack (alignment: .leading) {
                    Button {
                        detailScreen.toggle()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.red)
                            .bold()
                    }
                    .padding(.leading)
                    SearchSecondViewScreen()
                }
            } else {
                SearchAlbumsView(detailScreen: $detailScreen)
            }
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
