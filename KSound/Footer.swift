//
//  Footer.swift
//  KSound
//
//  Created by Christopher Fonseka on 08/11/2020.
//

import SwiftUI

struct Footer: View {
    @Binding var selected: Consonoant

    private let consonants = Array(Consonoant.all.reversed())

    var body: some View {
        VStack {
            Divider()

            HStack {
                Menu {
                    Picker("Selected Consonant", selection: $selected) {
                        ForEach(consonants) {
                            Text($0.title).tag($0)
                        }
                    }
                } label: {
                    Label("Consonant", systemImage: "line.horizontal.3.decrease.circle.fill")
                }

                Spacer()
            }
            .padding()
        }
    }
}

struct Footer_Previews: PreviewProvider {
    @State static var selected = Consonoant.all.first!

    static var previews: some View {
        Group {
            Footer(selected: $selected)
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)

            Footer(selected: $selected)
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
