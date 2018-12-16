//  InsertionSort.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 15/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class InsertionSort: NSObject {
    
    /// Performs the Insertion sort algorithm to a given array
    ///
    /// - Parameters:
    ///   - array: the array of elements to be sorted
    ///   - isOrderedBefore: returns true if the elements provided are in the correct order
    /// - Returns: a sorted array containing the same elements
    func insetionSortGeneric<T>(_ array: [T], _ isOrderedBefore: (T, T) -> Bool) -> [T] {
        guard array.count > 1 else { return array }
        
        var a = array
        for x in 1..<a.count {
            var y = x
            let temp = a[y]
            while (y > 0) && (isOrderedBefore(temp, a[y - 1])) {
                a[y] = a[y-1]
                y -= 1
            }
            a[y] = temp
        }
        return a
    }
    
    /// Performs the Insertion sort algorithm to a given array
    ///
    /// - Parameter array: the array to be sorted, containing elements that confirm to the Comparable protocol
    /// - Returns: a sorted array containing the same elements
    func insertionSortGeneric<T: Comparable>(_ array: [T]) -> [T]{
        guard array.count > 1 else { return array }
        
        var a = array
        for x in 1..<a.count {
            var y = x
            let temp = a[y]
            while (y > 0) && (temp < a[y-1]) {
                a[y] = a[y-1]
                y -= 1
            }
            a[y] = temp
        }
        return a
    }
    
    
    /// Example 1:
    /// Description: Insertion sort by swaping the vales
    func insertionSort(array: [Int]) -> [Int] {
        var a = array
        for x in 1..<a.count {
            var y = x
            while (y > 0) && (a[y] < a[y-1]) {
                a.swapAt(y-1, y)
                y -= 1
            }
        }
        return a
    }
    
    /// Example 2:
    /// Description: Insertion sort by shifting the values to right side
    func insertionSortATinyBitFaster(array: [Int]) -> [Int] {
        var a = array
        for x in 1..<a.count {
            var y = x
            let temp = a[y]
            while (y>0) && (temp<a[y-1]) {
                a[y] = a[y-1]
                y -= 1
            }
            a[y] = temp
        }
        return a
    }
}
