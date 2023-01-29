//
//  USSDApp.swift
//  USSD
//
//  Created by Javlonbek on 17/01/23.
//

import SwiftUI

@main
struct USSDApp: App {
    let settings = User()
    var body: some Scene {
        WindowGroup {
            USSDView()
                .environmentObject(settings)
        }
    }
}
