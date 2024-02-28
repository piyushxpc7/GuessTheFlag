//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Chandra on 20/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing:0){
                Color.red
                Color.blue
            }
            .ignoresSafeArea()
            Text("YOUR MUM")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
            ////            Color.orange
            //            Color(red:1,green:0.8,blue:0)
            //            //Color.primary,Color.secondary
            //
            //            //It's own view
            ////                .frame(width: 200,height: 200)
            ////                .frame(minWidth: 200,maxWidth: .infinity,maxHeight: 200)
            //            Text("Hello")
            //        }.ignoresSafeArea()
            //        .background(.red)
            //        HStack{
            //
            //            Text("HELLO")
            //            Text("HELLO")
            //        }
            //        VStack(alignment: .leading, spacing:20) {
            //            Spacer()
            //            Text("Hello, world!")
            //            Text("Hello, world!")
            //
            //            Spacer()
            //        }
            //        ZStack(alignment: .trailing, content: {
            //            Text("Placeholder")
            //            Text("Hello")
            //
            //        })
            //        .padding()
        }
    }
}

#Preview {
    ContentView()
}
