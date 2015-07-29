//
//  DemoBotTests.swift
//  DemoBotTests
//
//  Created by Udo Hoppenworth on 7/27/15.
//  Copyright (c) 2015 Udo Hoppenworth. All rights reserved.
//

import UIKit
import XCTest

class DemoBotTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
        
        let baseUrl = NSURL(string: "http://www.apple.com")
        let manager = AFHTTPSessionManager(baseURL: baseUrl, sessionConfiguration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        manager.GET("test", parameters: nil, success: { (task, response) -> Void in
            //
        }) { (task, error) -> Void in
            XCTAssertNotNil(error, "Error must be not nil")
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
