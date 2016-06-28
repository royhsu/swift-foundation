//
//  NSString+Extensions.swift
//  TWFoundation
//
//  Created by 許郁棋 on 2016/6/27.
//  Copyright © 2016年 Tiny World. All rights reserved.
//

import Foundation

extension String {
    
    // Note: This function only works in file path. DO NOT apply it on URL string.
    // See details: http://stackoverflow.com/questions/2579544/nsstrings-stringbyappendingpathcomponent-removes-a-in-http
    func appendPathComponent(component: String) -> String {
        
        let URL = NSURL(string: self)!
        
        return URL.URLByAppendingPathComponent(component).path!
        
    }
    
    // Note: As the same as appendPathComponent(:)
    func appendPathExtension(`extension`: String) -> String? {
        
        let URL = NSURL(string: self)!
        
        return URL.URLByAppendingPathExtension(`extension`).path!
        
    }
    
}
