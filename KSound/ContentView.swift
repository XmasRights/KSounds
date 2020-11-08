//
//  ContentView.swift
//  KSound
//
//  Created by Christopher Fonseka on 04/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            SoundBoard(root: "ㄱ")
            Spacer()
            Footer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
