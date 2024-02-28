//
//  MainApp.swift
//  GuessTheFlag
//
//  Created by Chandra on 21/01/24.
//

import SwiftUI

struct MainApp: View {
    @State var countries = ["Estonia","France","Germany","Ireland","Italy","Nigeria","UK","US","Poland","Spain","Ukraine"].shuffled()
    @State  var correctanswer = Int.random(in:0...2)
    @State private var showingscore = false
    @State private var scoretitle = ""
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [.init(color :Color (red:0.1,green:0.2,blue:0.45), location: 0.3),.init(color: .blue, location: 0.3)], center: .center, startRadius: 200, endRadius: 700)
//            LinearGradient(colors: [Color.blue,.black], startPoint: .top, endPoint:.bottom)
                .ignoresSafeArea()
            VStack {
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack(spacing : 15){
                    
                    
                    
                    VStack{
                        
                        Text("Tap the Flag of")
                            .font(.subheadline.weight(.semibold))
                            .foregroundColor(.secondary)
                        Text(countries[correctanswer])
                            .font(.largeTitle.weight(.semibold))
                        
                    }
                    ForEach(0..<3){ number in
                        Button{ 
                            flagtapped(number)
                        }
                    label: {
                        Image(countries[number])
                            .clipShape(.circle)
                            
                    }
                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.vertical,20)
                .background(.thinMaterial)
            .clipShape(.rect(cornerRadius: 20))
                Text("Score : ??")
                    .foregroundStyle(.white)
                    .font(.title.bold())
            }
        }
        .alert(scoretitle, isPresented: $showingscore){
            Button("Continue "){askquestions()}
            
        } message:{
            Text("Your score is ???")
        }
    
    }
   func  flagtapped(_ Number :Int){
        if Number == correctanswer{
            scoretitle = "Correct"
        }
       else {
           scoretitle = "Wrong"
       }
       showingscore = true
    }
    func askquestions(){
        countries.shuffle()
        correctanswer = Int.random(in: 0...2)
    }
   
}

#Preview {
    MainApp()
}
