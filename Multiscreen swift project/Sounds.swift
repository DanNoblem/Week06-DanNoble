//
//  ContentView.swift
//  Multiscreen swift project
//
//  Created by Daniel Wai on 2/14/23.
//

import SwiftUI
import UIKit
import AVFoundation

func loadUrlAudio(_ urlString:String) -> AVAudioPlayer? {
    let url = URL(string: urlString)
    do {
        let data = try Data(contentsOf: url!)
        return try AVAudioPlayer(data: data)
    } catch {
        print("loadUrlSound error", error)
    }
    return nil
}

let urlSounds = ["https://weatherfortheblind.org/wp-content/themes/weather/tracks/SLEEP.mp3","https://weatherfortheblind.org/wp-content/themes/weather/tracks/SUNRISE.mp3"]



struct Sounds: View {
    @State private var soundIndex = 0
    @State private var soundFile = urlSounds[0]
    @State private var player: AVAudioPlayer? = nil
    var body: some View {
        TimelineView(.animation) { context in
            VStack {
                HStack {
                    Button("Play") {
                        print("Button Play")
                        player = loadUrlAudio(soundFile)
                        print("player", player as Any)
                        // Loop indefinitely
                        player?.numberOfLoops = -1
                        player?.play()
                    }
                    Button("Stop") {
                        print("Button Stop")
                        player?.stop()
                    }
                    Button("Next") {
                        soundIndex = (soundIndex+1) % urlSounds.count
                        soundFile = urlSounds[soundIndex]
                    }
                }
                Text("soundIndex \(soundIndex)")
                Text(soundFile)
                if let player = player {
                    Text("duration " + String(format: "%.1f", player.duration))
                    Text("currentTime " + String(format: "%.1f", player.currentTime))
                }
            }
        }
    }
}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        Sounds()
    }
}
