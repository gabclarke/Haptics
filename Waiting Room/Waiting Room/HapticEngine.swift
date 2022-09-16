//
//  HapticEngine.swift
//  Waiting Room
//
//  Created by Gabrielle Clarke on 9/15/22.
//

import Foundation
import CoreHaptics

var engine: CHHapticEngine?


guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }

    do {
        engine = try CHHapticEngine()
        try engine?.start()
    } catch {
        print("There was an error creating the engine: \(error.localizedDescription)")
    }
