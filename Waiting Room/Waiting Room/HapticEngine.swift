////
////  HapticEngine.swift
////  Waiting Room
////
////  Created by Gabrielle Clarke on 9/15/22.
////
//
//import Foundation
//import CoreHaptics
//
//class HapticEngine
//var engine: CHHapticEngine?
//
//
//guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
//
//    do {
//        engine = try CHHapticEngine()
//        try engine?.start()
//    } catch {
//        print("There was an error creating the engine: \(error.localizedDescription)")
//    }
//
//
//func createEngine() {
//        // Create and configure a haptic engine.
//        do {
//            // Associate the haptic engine with the default audio session
//            // to ensure the correct behavior when playing audio-based haptics.
//            let audioSession = AVAudioSession.sharedInstance()
//            engine = try CHHapticEngine(audioSession: audioSession)
//        } catch let error {
//            print("Engine Creation Error: \(error)")
//        }
//        
//        guard let engine = engine else {
//            print("Failed to create engine!")
//            return
//        }
//        
//        // The stopped handler alerts you of engine stoppage due to external causes.
//        engine.stoppedHandler = { reason in
//            print("The engine stopped for reason: \(reason.rawValue)")
//            switch reason {
//            case .audioSessionInterrupt:
//                print("Audio session interrupt")
//            case .applicationSuspended:
//                print("Application suspended")
//            case .idleTimeout:
//                print("Idle timeout")
//            case .systemError:
//                print("System error")
//            case .notifyWhenFinished:
//                print("Playback finished")
//            case .gameControllerDisconnect:
//                print("Controller disconnected.")
//            case .engineDestroyed:
//                print("Engine destroyed.")
//            @unknown default:
//                print("Unknown error")
//            }
//        }
// 
//        // The reset handler provides an opportunity for your app to restart the engine in case of failure.
//        engine.resetHandler = {
//            // Try restarting the engine.
//            print("The engine reset --> Restarting now!")
//            do {
//                try self.engine?.start()
//            } catch {
//                print("Failed to restart the engine: \(error)")
//            }
//        }
//    }
