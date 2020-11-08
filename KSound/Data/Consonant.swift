//
//  Consonant.swift
//  KSound
//
//  Created by Christopher Fonseka on 08/11/2020.
//

import Foundation

enum ConsonantStyle {
    case basic
    case asperated
    case tensed
}

struct Consonoant: Identifiable {
    var id: Character { character }

    let character: Character
    let style: ConsonantStyle
}

private extension Character {
    static let basicKVowels: [Character] = [
        "\u{1161}",
        "\u{1165}",
        "\u{1169}",
        "\u{116E}",
        "\u{1173}",
        "\u{1175}"
    ]
}

extension Consonoant {
    var basicVowels: [Character] {
        Character.basicKVowels.map {
            Character("\(self.character)\($0)")
        }
    }
}
