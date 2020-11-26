//
//  ContentView.swift
//  Klockapp
//
//  Created by Bill Martensson on 2020-11-25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var klcom = Klockcom()
    
    var body: some View {
        VStack {
            Text(klcom.messtext)
                .padding()
            
            Button(action: {
                klcom.sendMess(texten: "FRÅN TELEFON")
            }) {
                Text("Skicka")
            }
            
        }
    }
    
    func getsomedata()
    {
        var fname = UserDefaults(suiteName: "group.pia9aw")!.string(forKey: "firstname")
        
        UserDefaults(suiteName: "group.pia9aw")!.setValue("Bill", forKey: "firstname")
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
