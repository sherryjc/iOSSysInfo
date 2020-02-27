//
//  LANInfo.swift
//  SysInfo
//
//  Created by Joe Sherry on 2/26/20.
//  Copyright © 2020 JMacDev. All rights reserved.
//

import Foundation

struct IpV4Addr: Hashable, Codable {
    var ip0: UInt8
    var ip1: UInt8
    var ip2: UInt8
    var ip3: UInt8
    fileprivate var ipStr: String
    
    func AsString() -> String {
        return ipStr
    }
    
}

struct LANNode: Hashable, Codable {
    var ipAddr: IpV4Addr
    var name: String
    var desc: String
}

struct LANInfo: Hashable, Codable {
    var name: String
    var ipAddr: IpV4Addr;
    var subnetMask: IpV4Addr;
    var router: IpV4Addr;
    static func == (lhs: LANInfo, rhs: LANInfo) -> Bool {
        return lhs.name == rhs.name
    }

    //fileprivate var visibleNodes: [LANNode];
    
}
