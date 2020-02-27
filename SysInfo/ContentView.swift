//
//  ContentView.swift
//  SysInfo
//
//  Created by Joe Sherry on 2/26/20.
//  Copyright © 2020 JMacDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var lanInfoView = LANInfoView(lanInfo: lanInfo)
    var lanInfoText = Text("LAN Info")
    var body: some View {
        VStack {
            Text("System Info")
            NavigationView {
                HStack {
                    NavigationLink(destination: lanInfoView) {
                        Text("Lan Info")
                    }.navigationBarTitle("Navigation")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
