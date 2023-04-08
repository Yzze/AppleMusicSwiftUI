//
//  TapBarView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 02.04.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            LiberyView()
                .tabItem {
                    Image(systemName: "rectangle.stack.badge.play")
                    Text("Медиатека")
                }
            
            RadioContentView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            
            Text("Поиск")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
        .accentColor(.red)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
