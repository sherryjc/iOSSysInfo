//
//  LANInfoView.swift
//  SysInfo
//
//  Created by Joe Sherry on 2/26/20.
//  Copyright © 2020 JMacDev. All rights reserved.
//

import SwiftUI


struct LANInfoView: View {
    var lanInfo: LANInfo
    let bg1 = Color(red: 0.8, green: 0.8, blue: 0.8, opacity: 1.0)
    let bg2 = Color(red: 0.9, green: 0.9, blue: 0.9, opacity: 1.0)
    let bg3 = Color(red: 0.0, green: 0.0, blue: 0.9, opacity: 0.7)
    let fg1 = Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0)

    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            HStack(alignment: .center) {
                Spacer()
                Text("Current LAN Info").fontWeight(.bold).foregroundColor(fg1)
                Spacer()
            }.padding(.all)
            .background(bg3)
 
            List {
                HStack {
                    Text("Name:")
                    Spacer()
                    Text(lanInfo.name)
                } .padding(.all).background(bg1)
                HStack {
                    Text("IP address:")
                    Spacer()
                    Text(lanInfo.ipAddr.AsString())
                } .padding(.all).background(bg2)
                HStack {
                    Text("Subnet mask:")
                    Spacer()
                    Text(lanInfo.subnetMask.AsString())
                } .padding(.all).background(bg1)
                HStack {
                    Text("Router:")
                    Spacer()
                    Text(lanInfo.router.AsString())
                } .padding(.all).background(bg2)
            }
        }
    }
}

struct LANInfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        LANInfoView(lanInfo: lanInfo)
    }
}
