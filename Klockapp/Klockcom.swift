//
//  Klockcom.swift
//  Klockapp
//
//  Created by Bill Martensson on 2020-11-25.
//

import Foundation
import WatchConnectivity
import SwiftUI

class Klockcom : NSObject, ObservableObject, WCSessionDelegate
{
    
    @Published var messtext = "INGET MESS"
    
    
    override init() {
        super.init()
        let session = WCSession.default
        session.delegate = self
        session.activate()
    }
    
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    #if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    #endif
    
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        print(message)
        
        if let kltxt = message["klocktext"] as? String {
            DispatchQueue.main.async {
                self.messtext = kltxt
            }
            
        }
    }
    
    func sendMess(texten : String)
    {
        if (WCSession.default.isReachable) {
            let message = ["klocktext": texten]
            WCSession.default.sendMessage(message, replyHandler: nil)
        } else {
            print("NOT REACHABLE")
        }
    }
    
}
