//  BinarySearch.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 16/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class BinarySearch {

    /// Example
    /// The built-in "Collection.index(of:)" function performs a "Linear Search". In code it looks something like this.
    func linearSearch<T: Equatable>(_ a: [T], _ key:T) -> Int? {
        for i in 0..<a.count {
            if a[i] == key {
                return i
            }
        }
        return nil
    }
    
    func binarySearchRecursive<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
        if range.lowerBound >= range.upperBound {
            // If we get here then the search key is not in the array.
            return nil
        } else {
            // Calculate where to split the array.
            let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
            
            // Is the search key in the left half?
            if a[midIndex] > key {
                return binarySearchRecursive(a, key: key, range: range.lowerBound ..< midIndex)
                
            // Is the search key is in the right half?
            } else if a[midIndex] < key {
                return binarySearchRecursive(a, key: key, range: midIndex + 1 ..< range.upperBound)
            
            // If we get here then we've fonund the search key!
            } else {
                return midIndex
            }
        }
    }
    
    func binarySearchIterative<T: Comparable>(_ a: [T], key: T) -> Int? {
        var lowerBound = 0
        var upperBound = a.count
        while lowerBound < upperBound {
            let midIndex = lowerBound + (upperBound - lowerBound) / 2
            if a[midIndex] == key {
                return midIndex
            } else if a[midIndex] < key {
                lowerBound = midIndex + 1
            } else {
                upperBound = midIndex
            }
        }
        return nil
    }
}
