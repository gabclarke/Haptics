//
//  ContentView.swift
//  Waiting Room
//
//  Created by Gabrielle Clarke on 9/9/22.
//

import SwiftUI
import CoreHaptics

struct ContentView: View {
    func implode() {
        let patternURL = "Waiting Room/Implode"
        let engine = try CHHapticEngine()
        try engine.start()
        try engine.playPattern(from: patternURL)
    }
    
//    var implode = ViewController().playImplode()
    var body: some View {
        HapticList()
        Text("Implode")
            .onTapGesture(perform: implode)
        Text("Telephone Ring")
//            .onAppear(perform: prepareHaptics)
//            .onTapGesture(perform: telephoneRing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
