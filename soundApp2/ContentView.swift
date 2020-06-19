//
//  ContentView.swift
//  soundApp2
//
//  Created by W Wessels on 6/19/20.
//  Copyright © 2020 W Wessels. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to Sound app")
            Image("dj").resizable().aspectRatio(contentMode: .fit)
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("record").resizable().aspectRatio(contentMode: .fit)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("record").resizable().aspectRatio(contentMode: .fit)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("record").resizable().aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
