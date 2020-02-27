//
//  ContentView.swift
//  SysInfo
//
//  Created by Joe Sherry on 2/26/20.
//  Copyright © 2020 JMacDev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let lanInfoView = LANInfoView(lanInfo: lanInfo)
    let wifiInfoView = WifiInfoView()
    var body: some View {
        VStack {
            NavigationView {
                List {
                    NavigationLink(destination: lanInfoView) {
                        Text("Lan Info")
                            .foregroundColor(Color.blue)
                    }
                    NavigationLink(destination: wifiInfoView){
                        Text("Wifi Info")
                            .foregroundColor(Color.blue)
                    }
                    }.navigationBarTitle("System Info")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
