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
    
    var body: some View {
        VStack {
            HStack {
                Text("IP address:")
            }
            HStack {
                Text("Subnet mask:")
            }
        }
    }
}

struct LANInfoView_Previews: PreviewProvider {
    
    static var previews: some View {
        LANInfoView(lanInfo: lanInfo)
    }
}
