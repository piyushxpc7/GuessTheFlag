//
//  Alert.swift
//  GuessTheFlag
//
//  Created by Chandra on 21/01/24.
//

import SwiftUI


struct Alert: View {
    @State private var showingalert = false
    var body: some View {
        Button("Show Alert"){
            showingalert = true
        }
        .alert("Important Message",isPresented: $showingalert){
//            Button("OK"){ }
            Button("Delete",role: .destructive){}
            Button("Cancel",role:.cancel){}
        }message: {
            Text("Namas te")
        }
    }
}

#Preview {
    Alert()
}
