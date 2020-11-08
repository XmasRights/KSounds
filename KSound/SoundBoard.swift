//
//  SoundBoard.swift
//  KSound
//
//  Created by Christopher Fonseka on 04/11/2020.
//

import SwiftUI

struct SoundBoard: View {
    let root: String
    let vowels: [String] = ["ㅏ", "ㅑ", "ㅓ", "ㅕ", "ㅗ", "ㅛ", "ㅜ", "ㅠ", "ㅡ", "ㅣ"]

    var body: some View {
        verticalView
    }

    private var characters: [String] {
        vowels.map { "\(root)\($0)" }
    }

    private let columns: [GridItem] = [
        .init(.adaptive(minimum: 60, maximum: 60), spacing: 12)
    ]

    private var verticalView: some View {
        VStack {
            Text(root)
                .font(.largeTitle)

            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(characters, id: \.self) {
                    SpeakButton(text: $0)
                        .frame(width: 60, height: 60)
                }
            }
        }
    }
}

struct SoundBoard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SoundBoard(root: "ㄱ")
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                .previewLayout(.fixed(width: 320, height: 480))

            SoundBoard(root: "ㄱ")
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 320, height: 480))

            SoundBoard(root: "ㄱ")
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                .previewLayout(.fixed(width: 480, height: 320))

            SoundBoard(root: "ㄱ")
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 480, height: 320))
        }
    }
}
