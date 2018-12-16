//  InsertionSortRepository.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 02/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class InsertionSortRepository: NSObject {

    public func insertionSortOperation() {
        let insertionSort = InsertionSort()
        
        let list = [65,43,21,654,98]
        print(insertionSort.insertionSort(array: list))
        print(insertionSort.insertionSortATinyBitFaster(array:list))
        
        let numbers = [56465,23,1,68,89,423,1,8,798,4231]
        print(insertionSort.insetionSortGeneric(numbers, <))
        print(insertionSort.insetionSortGeneric(numbers, >))
        
        let strings = ["g","h","e","s","a","c","b","m","l","x"]
        print(insertionSort.insetionSortGeneric(strings, <))
        
        print(insertionSort.insertionSortGeneric(numbers))
    }
}
