// Requirement: Implement Selection Sort
//
// Solution:
// Implement Selection Sort...as it is :-)

import Foundation

public func selectSort(list: [Int]) -> [Int] {
    
    guard list.count > 1 else { return list }
    
    var array = list
    for i in 0 ..< array.count - 1 {
        
        // Find the lowest value in the rest of the array.
        var lowest = i
        for j in i + 1 ..< array.count {
            if array[j] < array[lowest] {
                lowest = j
            }
        }
        
        // Swap the lowest value with the current array index.
        if i != lowest {
            swap(&array[i], &array[lowest])
        }
    }
    
    return array
}
