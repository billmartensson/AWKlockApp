//
//  KlockappApp.swift
//  KlockappAW Extension
//
//  Created by Bill Martensson on 2020-11-25.
//

import SwiftUI

@main
struct KlockappApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
