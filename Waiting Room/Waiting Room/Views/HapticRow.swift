//
//  HapticRow.swift
//  Waiting Room
//
//  Created by Gabrielle Clarke on 9/9/22.
//

import SwiftUI

struct HapticRow: View {
    var haptic: Haptic
    
    var body: some View {
        HStack {
            haptic.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(haptic.name)
            
            Spacer()
        }
    }
}

struct HapticRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HapticRow(haptic: haptics[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
