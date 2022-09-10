//
//  HapticList.swift
//  Waiting Room
//
//  Created by Gabrielle Clarke on 9/9/22.
//

import SwiftUI

struct HapticList: View {
    var body: some View {
        NavigationView {
            List(haptics) { haptic in
                NavigationLink {
                    Visit()
                } label: {
                    HapticRow(haptic: haptic)
                }
            }
            .navigationTitle("Haptic patterns")
        }
    }
}

struct HapticList_Previews: PreviewProvider {
    static var previews: some View {
        HapticList()
    }
}
