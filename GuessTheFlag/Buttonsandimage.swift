//
//  Buttonsandimage.swift
//  GuessTheFlag
//
//  Created by Chandra on 21/01/24.
//

import SwiftUI

struct Buttonsandimage: View {
    var body: some View {
        VStack{
            Image(decorative: "dsd")
            Spacer()
            
//            Button("Hello"){}
//            Button ("Test"){
//                hello()
//            }
//            Button("Namaste"){}
//            Button("Del",role: .destructive,action: {})
            Button("1"){ }
                .buttonStyle(.bordered)
            Button("2",role: .destructive){ }
                .buttonStyle(.bordered)
            Button("1"){ }
                .buttonStyle(.borderedProminent)
                .tint(.indigo)
            Button("2",role: .destructive){ }
                .buttonStyle(.borderedProminent)
            Image(systemName: "Heart")
                .font(.largeTitle)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            //Diffrent style
            Button {
                print("Hello")
                
            } label: {
                Text("Namaste")
                    .padding()
                    .foregroundColor(.pink)
                
            }
            Button {
                print("Ok")
                
            } label: {
              Image(systemName: "heart")
                
            }
           
            Button {
                print("Ok")
                
            } label: {
             Label("Edit", systemImage:  "pencil")// Similar use case for the down
                
            }
            Spacer()
            Button("King",systemImage: "heart"){
                print("Hello") //For both image and text
                
            }.foregroundColor(.orange)

        }
    }
    func hello(){
        print("Hello")
    }
}

#Preview {
    Buttonsandimage()
}
