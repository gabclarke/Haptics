//
//  Visit.swift
//  Waiting Room
//
//  Created by Gabrielle Clarke on 9/9/22.
//

import SwiftUI

struct Visit: View {
    var body: some View {
        VStack {
                   Spacer()
                   HStack {
                       Spacer()
                       CircleImage(image: Image("turtlerock"))
                           .padding(.trailing)
                   }
               }
    }
}

struct Visit_Previews: PreviewProvider {
    static var previews: some View {
        Visit()
    }
}
