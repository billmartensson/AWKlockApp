//
//  ContentView.swift
//  KlockappAW Extension
//
//  Created by Bill Martensson on 2020-11-25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var klcom = Klockcom()
    
    var body: some View {
        NavigationView {
            VStack {
                Text(klcom.messtext)
                    .padding()
                
                Button(action: {
                    klcom.sendMess(texten: "FRÅN KLOCKA")
                }) {
                    Text("Hej")
                }
                
                NavigationLink(destination: Text("Ny vy")) {
                    
                    Text("GO")
                }
                
                Text("Mer text")
                    .background(Color.red)
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
