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
        XCTAssertEqual(sortMethod(list), [])
    }
    
    func testOneElementArray() {
        let list = [1]
        XCTAssertEqual(sortMethod(list), [1])
    }
    
    func testSortedList() {
        let list = [1,2,3]
        XCTAssertEqual(sortMethod(list), [1,2,3])
    }
    
    func testUnsortedList() {
        let list = [3, 2, 1]
        XCTAssertEqual(sortMethod(list), [1, 2, 3])
    }
}

SortTestCase(method: bogoSort)
//SortTestCase(method: selectSort)
SortTestCase(method: quickSort)
SortTestCase(method: mergeSort)
