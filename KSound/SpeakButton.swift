//
//  SpeakButton.swift
//  KSound
//
//  Created by Christopher Fonseka on 04/11/2020.
//

import SwiftUI
import AVFoundation

struct SpeakButton: View {
    let text: String
    private let synth = AVSpeechSynthesizer()

    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.red)
            .overlay(
                Text(text)
                    .font(.title)
            )
            .onTapGesture(perform: speak)
    }

    private var utterance: AVSpeechUtterance {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
        return utterance
    }

    func speak() {
        synth.speak(utterance)
    }
}

struct SpeakButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SpeakButton(text: "한")
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                .previewLayout(.fixed(width: 60, height: 60))

            SpeakButton(text: "한")
                .preferredColorScheme(.light)
                .previewLayout(.fixed(width: 60, height: 60))

        }
    }
}
