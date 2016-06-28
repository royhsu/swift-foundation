//
//  StringTests.swift
//  TWFoundationTests
//
//  Created by 許郁棋 on 2016/6/27.
//  Copyright © 2016年 Tiny World. All rights reserved.
//

import XCTest

class StringTests: XCTestCase {
    
    func testAppendingPathComponent() {
        
        let appendingPath = "test"
        
        let filePath = "examples/example"
        let finalFilePath = filePath.appendPathComponent(appendingPath)
        let expectedPath = filePath + "/\(appendingPath)"
        
        XCTAssertEqual(finalFilePath, expectedPath)
        
        let URLString = "http://example.com"
        let finalURLString = URLString.appendPathComponent(appendingPath)
        let expectedURLString = URLString + "/\(appendingPath)"
        
        XCTAssertNotEqual(finalURLString, expectedURLString)
        
    }
    
    func testAppendingPathExtension() {
        
        let appendingExtension = "txt"
        
        let filePath = "example"
        let finalFilePath = filePath.appendPathExtension(appendingExtension)
        let expectedPath = filePath + ".\(appendingExtension)"
        
        XCTAssertEqual(finalFilePath, expectedPath)
        
        let URLString = "http://example"
        let finalURLString = URLString.appendPathExtension(appendingExtension)
        let expectedURLString = URLString + "/\(appendingExtension)"
        
        XCTAssertNotEqual(finalURLString, expectedURLString)
        
    }
    
}
