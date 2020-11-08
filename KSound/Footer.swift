//
//  Footer.swift
//  KSound
//
//  Created by Christopher Fonseka on 08/11/2020.
//

import SwiftUI

struct Footer: View {
    let consonant = Consonoant.all

    var body: some View {
        VStack {
            Divider()

            HStack {
                Menu {
                    ForEach(consonant) {
                        Text(String($0.character))
                    }
                } label: {
                    Label("Filter", systemImage: "line.horizontal.3.decrease.circle.fill")
                }

                Spacer()
            }
            .padding()
        }
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Footer()
                .preferredColorScheme(.light)
                .previewLayout(.sizeThatFits)

            Footer()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
    }
}
