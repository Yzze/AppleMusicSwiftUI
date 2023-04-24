//
//  ContentView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 02.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TabBarView()
            PlayerView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
