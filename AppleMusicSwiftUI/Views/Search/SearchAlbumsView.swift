//
//  SearchAlbumsView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 20.04.2023.
//

import SwiftUI

struct SearchAlbumsView: View {
    
    @Binding var detailScreen: Bool
    
    @ObservedObject private var models = ModelGenreStation()
    @State private var name = ""
    @State private var columns = [
        GridItem(.fixed(175)),
        GridItem(.adaptive(minimum: 305))
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Поиск")
                    .fontWeight(.heavy)
                    .font(.system(size: 32))
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField (
                        "Ваша Медиатека",
                        text: $name
                    )
                    .disableAutocorrection(true)
                }
                .padding(7)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 0.5)
                }
                .padding(.bottom, 10)
                NavigationLink(destination: SearchSecondViewScreen(),
                               label: {
                    SearchViewRepresentable()
                })
                .navigationBarTitle("")
                .navigationBarBackButtonHidden(true)
            }
            .padding()
            .padding(.bottom, 50)
        }
        .accentColor(.red)

    }
}

struct SearchAlbumsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchAlbumsView(detailScreen: .constant(false))
    }
}
