//
//  GradientView.swift
//  GuessTheFlag
//
//  Created by Chandra on 20/01/24.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        //        LinearGradient(colors: [Color.white,.black], startPoint: .topLeading, endPoint: .trailing)    }
//        LinearGradient(stops:[ Gradient.Stop(color: .black, location: 0.45), // Gradient.Stop(color: .white, location: 0.55)],
//         .init(color: .white, location: 0.55)],
//                       startPoint: .top, endPoint: .bottom)
//        RadialGradient(colors: [.black,.blue], center: .center, startRadius: 20, endRadius: 200)
//        AngularGradient(colors: [.blue,.white,.orange,.indigo], center: UnitPoint.center)
        Text ("Your content" )
            .foregroundStyle(.white)
            .frame (maxWidth: .infinity, maxHeight:  .infinity)
            .background(.indigo.gradient)

        
    }
}
//}

#Preview {
    GradientView()
}
