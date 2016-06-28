//
//  NSURL+Extensions.swift
//  TWFoundation
//
//  Created by 許郁棋 on 2016/6/27.
//  Copyright © 2016年 Tiny World. All rights reserved.
//

import Foundation

extension NSURL {
    
    // Note: If you need to get the file path from the returned URL, please access self.path instead of self.absoluteString.
    // See details: http://stackoverflow.com/questions/32716895/error-the-file-doesnt-exist-when-calling-writetofile-on-imagedata
    convenience init(filename: String, withExtension `extension`: String, `in` directory: Directory) {
        
        switch directory {
        case .document:
            
            let documentDirectoryPath = Directory.document.path
            let filePath = documentDirectoryPath
                .appendPathComponent(filename)
                .appendPathExtension(`extension`)!
            
            self.init(fileURLWithPath: filePath, isDirectory: false)
        }
        
    }
    
}
