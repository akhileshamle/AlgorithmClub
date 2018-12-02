//
//  theSwiftAlgorithmClub_iOSTests.swift
//  theSwiftAlgorithmClub_iOSTests
//
//  Created by Akhilesh Amle on 01/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.
//

import XCTest
@testable import theSwiftAlgorithmClub_iOS

class theSwiftAlgorithmClub_iOSTests: XCTestCase {
    
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
        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        self.testStackOperations()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
//    private func testStackOperations() {
//        self.stackTestEmpty()
//        self.stackTestOneElement()
//        self.stackTestTwoElements()
//        self.stackTestMakeEmpty()
//    }
//
//    private func stackTestEmpty() {
//        var stack = Stack<Int>()
//        XCTAssertTrue(stack.isEmpty)
//        XCTAssertEqual(stack.count, 0)
//        XCTAssertEqual(stack.top, nil)
//        XCTAssertNil(stack.pop())
//    }
//
//    private func stackTestOneElement() {
//        var stack = Stack<Int>()
//
//        stack.push(123)
//        XCTAssertFalse(stack.isEmpty)
//        XCTAssertEqual(stack.count, 1)
//        XCTAssertEqual(stack.top, 123)
//
//        let result = stack.pop()
//        XCTAssertEqual(result, 123)
//        XCTAssertTrue(stack.isEmpty)
//        XCTAssertEqual(stack.count, 0)
//        XCTAssertEqual(stack.top, nil)
//        XCTAssertNil(stack.pop())
//    }
//
//    private func stackTestTwoElements() {
//        var stack = Stack<Int>()
//
//        stack.push(123)
//        stack.push(456)
//
//        XCTAssertFalse(stack.isEmpty)
//        XCTAssertEqual(stack.count, 2)
//        XCTAssertEqual(stack.top, 456)
//
//        let result1 = stack.pop()
//        XCTAssertEqual(result1, 456)
//        XCTAssertFalse(stack.isEmpty)
//        XCTAssertEqual(stack.count, 1)
//        XCTAssertEqual(stack.top, 123)
//
//        let result2 = stack.pop()
//        XCTAssertEqual(result2, 123)
//        XCTAssertTrue(stack.isEmpty)
//        XCTAssertEqual(stack.count, 0)
//        XCTAssertEqual(stack.top, nil)
//        XCTAssertNil(stack.pop())
//    }
//
//    private func stackTestMakeEmpty() {
//        var stack = Stack<Int>()
//
//        stack.push(123)
//        stack.push(456)
//        XCTAssertNotNil(stack.pop())
//        XCTAssertNotNil(stack.pop())
//        XCTAssertNil(stack.isEmpty)
//
//        stack.push(789)
//        XCTAssertEqual(stack.count, 1)
//        XCTAssertEqual(stack.top, 789)
//
//        let result = stack.pop()
//        XCTAssertEqual(result, 789)
//        XCTAssertTrue(stack.isEmpty)
//        XCTAssertEqual(stack.count, 0)
//        XCTAssertEqual(stack.top, nil)
//        XCTAssertNil(stack.pop())
//    }
}
