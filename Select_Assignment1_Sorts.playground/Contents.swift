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
        let sorted = sortMethod(list)
        let result = XCTAssertEqual(sorted, [])
        print("testEmptyArray", result)
    }
    
    func testOneElementArray() {
        let list = [1]
        let sorted = sortMethod(list)
        let result = XCTAssertEqual(sorted, [1])
        print("testOneElementArray", result)
    }
    
    func testSortedList() {
        let list = [1,2,3]
        let sorted = sortMethod(list)
        let result = XCTAssertEqual(sorted, [1,2,3])
        print("testSortedList", result)
    }
    
    func testUnsortedList() {
        let list = [3, 2, 1]
        let sorted = sortMethod(list)
        let result = XCTAssertEqual(sorted, [1, 2, 3])
        print("testUnsortedList", result)
    }
    
    // Requirement: One basic test to check an edge case
    func testEdgeCase() {
        let list = [8, 6, 8, 6, 8, 6, 8, 6, 8, 6]
        let sorted = sortMethod(list)
        let result = XCTAssertEqual(sorted, [6, 6, 6, 6, 6, 8, 8, 8, 8, 8])
        print("testEdgeCase", result)
    }
    
    // Requirement: One test where merge sort outperforms quick sort
    func testMergeKOOL() {
        
        // Explaination:
        // Merge sort work well with less element
        // Quick sort work bad with bad pivot. good pivot is the one that help devide the list to 2 equal (or nearly equal) lists
        var list: [Int] = []
        for i in 0..<5 {
            list.append(i + 1)
        }
        
        let sorted = sortMethod(list)
        let result = XCTAssertEqual(sorted, list)
        print("testMergeKOOL", result)
    }
    
    // One test where quick sort outperforms merge sort
    func testQuickKOOL() {
        
        // Explaination:
        // The more element, the bigger work Merge sort need to do
        // However, Quick sort in this case don't need to do much cause less and greater lists are both empty
        var list: [Int] = []
        for _ in 0..<100 {
            list.append(5)
        }
        
        let sorted = sortMethod(list)
        let result = XCTAssertEqual(sorted, list)
        print("testQuickKOOL", result)
    }
}

print("--- Bogo Sort testing ---")
SortTestCase(method: bogoSort)

print("\n--- Selection Sort testing ---")
SortTestCase(method: selectSort)

print("\n--- Quick Sort testing ---")
SortTestCase(method: quickSort)

print("\n--- Merge Sort testing ---")
SortTestCase(method: mergeSort)
