//: Playground - noun: a place where people can play

import UIKit

typealias SortMethod = ([Int]) -> [Int]

public class SortTestCase : XCTestCase {
    
    var sortMethod: SortMethod!
    
    init(method: SortMethod) {
        self.sortMethod = method
        super.init()
    }
    
    func testEmptyArray() {
        let list: [Int] = []
        let result = XCTAssertEqual(sortMethod(list), [])
        print("testEmptyArray", result)
    }
    
    func testOneElementArray() {
        let list = [1]
        let result = XCTAssertEqual(sortMethod(list), [1])
        print("testOneElementArray", result)
    }
    
    func testSortedList() {
        let list = [1,2,3]
        let result = XCTAssertEqual(sortMethod(list), [1,2,3])
        print("testSortedList", result)
    }
    
    func testUnsortedList() {
        let list = [3, 2, 1]
        let result = XCTAssertEqual(sortMethod(list), [1, 2, 3])
        print("testUnsortedList", result)
    }
    
    // Requirement: One basic test to check an edge case
    func testEdgeCase() {
        let list = [8, 6, 8, 6, 8, 6, 8, 6, 8, 6]
        let result = XCTAssertEqual(sortMethod(list), [6, 6, 6, 6, 6, 8, 8, 8, 8, 8])
        print("testEdgeCase", result)
    }
}

print("--- Bogo Sort testing ---")
SortTestCase(method: bogoSort)

print("--- Selection Sort testing ---")
SortTestCase(method: selectSort)

print("--- Quick Sort testing ---")
SortTestCase(method: quickSort)

print("--- Merge Sort testing ---")
SortTestCase(method: mergeSort)

