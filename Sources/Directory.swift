//
//  Directory.swift
//  TWFoundation
//
//  Created by 許郁棋 on 2016/6/27.
//  Copyright © 2016年 Tiny World. All rights reserved.
//

import Foundation

public enum Directory { case document }

public extension Directory {
    
    var path: String {
        
        switch self {
        case .document:
            
            let documentDirectoryPaths = NSSearchPathForDirectoriesInDomains(
                .DocumentDirectory,
                .UserDomainMask,
                true
            )
        
            return documentDirectoryPaths.first!
        }
        
    }
    
    var URL: NSURL {
        
        switch self {
        case .document:
            
            let documentDirectoryURLs =
                NSFileManager.defaultManager().URLsForDirectory(
                    .DocumentDirectory,
                    inDomains: .UserDomainMask
            )
            
            return documentDirectoryURLs.first!
        }
        
    }
    
}
