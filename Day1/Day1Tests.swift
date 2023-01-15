//
//  Day1Tests.swift
//  AdventOfCodeTests
//
//  Created by DanielJohns on 2022-11-09.
//

import XCTest

final class Day1Tests: XCTestCase {
    let day = Day1()
    
    func testDay() throws {
        let input = 
"""
199
200
208
210
200
207
240
269
260
263
"""
        XCTAssertEqual(day.run(input: input), "7")
    }
}
