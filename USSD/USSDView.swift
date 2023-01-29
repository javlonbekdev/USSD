//
//  ContentView.swift
//  USSD
//
//  Created by Javlonbek on 17/01/23.
//

import SwiftUI

struct USSDView: View {
    @EnvironmentObject var user: User
    var body: some View {
        TabView {
            Text("hello")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("hi")
                .tabItem {
                    Image(systemName: "globe")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        USSDView()
    }
}
