//
//  LiberyView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 02.04.2023.
//

import SwiftUI

struct LiberyView: View {
    
    @State var buttonToggleScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                if buttonToggleScreen {
                    ListView()
                } else {
                    Libery()
                }
            }
            .navigationTitle(Text("Медиатека"))
            .navigationBarItems(
                trailing:
                    Button(action: {
                        buttonToggleScreen.toggle()
                    }, label: {
                        if buttonToggleScreen {
                            Text("Готово")
                                .foregroundColor(.red)
                        } else {
                            Text("Править")
                                .foregroundColor(.red)
                        }
                    })
            )
        }
    }
}

struct LiberyView_Previews: PreviewProvider {
    static var previews: some View {
        LiberyView()
    }
}
