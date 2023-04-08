//
//  Libery.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 02.04.2023.
//

import SwiftUI

struct Libery: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Ищете свою музыку?")
                    .fontWeight(.heavy)
                    
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .frame(width: 250)
            }
            .position(x: 200, y: 250)
        }
    }
}

struct Libery_Previews: PreviewProvider {
    static var previews: some View {
        Libery()
    }
}
