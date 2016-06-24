// Requirement: Implement Quick Sort
//
// Solution:
// I choose to implement Quick Sort - Dutch Flag version

import Foundation

public func quickSort(list: [Int]) -> [Int] {
    
    var array = list
    quicksortDutchFlag(&array, low: 0, high: list.count - 1)
    
    return array
}

func quicksortDutchFlag(inout a: [Int], low: Int, high: Int) {
    if low < high {
        let pivotIndex = low
        let (p, q) = partitionDutchFlag(&a, low: low, high: high, pivotIndex: pivotIndex)
        quicksortDutchFlag(&a, low: low, high: p - 1)
        quicksortDutchFlag(&a, low: q + 1, high: high)
    }
}

func partitionDutchFlag(inout a: [Int], low: Int, high: Int, pivotIndex: Int) -> (Int, Int) {
    
    let pivot = a[pivotIndex]
    var smaller = low
    var equal = low
    var larger = high
    
    while equal <= larger {
        if a[equal] < pivot {
            swap(&a, smaller, equal)
            smaller += 1
            equal += 1
        } else if a[equal] == pivot {
            equal += 1
        } else {
            swap(&a, equal, larger)
            larger -= 1
        }
    }
    
    return (smaller, larger)
}

func swap(inout a: [Int], _ i: Int, _ j: Int) {
    if i != j {
        swap(&a[i], &a[j])
    }
}
