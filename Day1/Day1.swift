//
//  Day1.swift
//  AdventOfCode
//
//  Created by DanielJohns on 2022-11-09.
//

import Foundation

final class Day1: Day {
    func getIncreaseCount(depths: [Int]) -> Int {
        var ups: Int = 0
        for index in (0 ... depths.count - 2) {
            if (depths[index] < depths[index + 1]) {ups += 1}
            //print(index)
            //print(depths[index] < depths[index + 1])
        }
        return ups
    }
    func getThreeDiffSlide(depths: [Int]) -> [Int] {
        var ret: [Int] = []
        for i in 0...depths.count - 3 {
            ret.append(depths[i] + depths[i+1] + depths[i+2])
        }
        return ret
    }
    func part1(_ input: [Int]) -> Int {
        getIncreaseCount(depths: input)
    }
    func part2(_ input: [Int]) -> Int {
        getIncreaseCount(depths: getThreeDiffSlide(depths: input))
    }
    func parse(_ input: String) -> [Int] {
        input.components(separatedBy: .newlines).map { Int($0)!}
    }
    func run(input: String) -> String {
        let parsed = parse(input)
        var ret = ""
        ret += "Part 1: "
        ret += part1(parsed)
        ret += "\n"
        ret += "Part 2: "
        ret += part2(parsed)
        return ret
    }
}
