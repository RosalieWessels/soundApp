//
//  ContentView.swift
//  soundApp2
//
//  Created by W Wessels on 6/19/20.
//  Copyright © 2020 W Wessels. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State var song: AVAudioPlayer?
    
    @State var songs = ["Still Corners - Fireflies.mp3", "Alkaline Trio - Clavicle.mp3", "Blackbird Blackbird - Pure.mp3"]
    
    var body: some View {
        VStack {
            Text("Welcome to Sound app")
            Image("dj").resizable().aspectRatio(contentMode: .fit)
            HStack {
                Button(action: {
                    self.playSound(soundNumber: 1)
                }) {
                    Image("record").resizable().aspectRatio(contentMode: .fit)
                }
                Button(action: {
                    self.playSound(soundNumber: 2)
                }) {
                    Image("record").resizable().aspectRatio(contentMode: .fit)
                }
                Button(action: {
                    self.playSound(soundNumber: 3)
                }) {
                    Image("record").resizable().aspectRatio(contentMode: .fit)
                }
            }
        }
        
        
    }
    
    func playSound(soundNumber : Int) {
        let path = Bundle.main.path(forResource: songs[soundNumber - 1], ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            song = try AVAudioPlayer(contentsOf: url)
            song?.play()
        } catch {
            // couldn't load file :(
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
