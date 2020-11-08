//
//  ContentView.swift
//  KSound
//
//  Created by Christopher Fonseka on 04/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State var selected: Consonoant = Consonoant.all.first!

    var body: some View {
        VStack {
            Spacer()
            SoundBoard(consonant: selected)
            Spacer()
            Footer(selected: $selected)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
