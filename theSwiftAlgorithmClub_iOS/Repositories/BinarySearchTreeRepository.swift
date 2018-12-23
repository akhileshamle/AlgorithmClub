//  BinarySearchTreeRepository.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 23/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class BinarySearchTreeRepository: NSObject {

    
    public func binarySearchTreeOperation() {
//        let tree = BinarySearchTree<Int>(value: 7)
//        tree.insert(value: 3)
//        tree.insert(value: 5)
//        tree.insert(value: 465)
//        tree.insert(value: 123)
//        tree.insert(value: 45)
//        tree.insert(value: 986)
//        tree.insert(value: 45)
//        tree.insert(value: 65560)
//        tree.insert(value: 1244)
//        tree.insert(value: 632)
//        tree.insert(value: 334)
        
        let tree = BinarySearchTree(array: [65,321,8,7,51,987,1,19,7,561,3,8])
        print(tree)
        print(tree.searchIterative(99) ?? "Not found")

        tree.traverseInOrder { (value) in
            print(value)
        }
        
        print(tree.toArray())
    }
}
