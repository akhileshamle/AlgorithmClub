//  BinarySearchRepository.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 16/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class BinarySearchRepository: NSObject {

    func binarySearchOperation() {
        let numbers = [654,98,75,1,54,89,432,13,48,7,651,9,87,984,3,1]
        
        let binarySearch = BinarySearch()
        
        // Linear Search
        print(binarySearch.linearSearch(numbers, 432) ?? "")
        
        // Binary Search
        // Sort
//        let insertionSort = InsertionSort()
//        let sortedNumbers = insertionSort.insetionSortGeneric(numbers, <)
        
        let sortedNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
        
        print(binarySearch.binarySearchRecursive(sortedNumbers, key: 48, range: 0..<sortedNumbers.count) ?? "Number not present!")
        print(binarySearch.binarySearchIterative(sortedNumbers, key: 53) ?? "Number is not present")
        
    }
}
