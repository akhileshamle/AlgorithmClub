//  BinarySearchTree.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 23/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

public class BinarySearchTree<T: Comparable> {

    private(set) public var value   : T
    private(set) public var parent  : BinarySearchTree?
    private(set) public var left    : BinarySearchTree?
    private(set) public var right   : BinarySearchTree?
    
    public convenience init(array: [T]) {
        precondition(array.count > 0)
        self.init(value: array.first!)
        for v in array {
            insert(value: v)
        }
    }
    
    public init(value: T) {
        self.value = value
    }
    
    public var isRoot : Bool {
        return parent == nil
    }
    
    public var isLeaf : Bool {
        return left == nil && right == nil
    }
    
    public var hasLeftChild : Bool {
        return left != nil
    }
    
    public var hasRightChild : Bool {
        return right != nil
    }
    
    public var haAnyChild : Bool {
        return right != nil || left != nil
    }
    
    public var hasBothChildren : Bool {
        return hasLeftChild && hasRightChild
    }
    
    public var count : Int {
        return (left?.count ?? 0) + 1 + (right?.count ?? 0)
    }
    
    // Insert
    public func insert(value: T) {
        if value < self.value {
            if let left = left {
                left.insert(value: value)
            } else {
                left = BinarySearchTree(value: value)
                left?.parent = self
            }
        } else {
            if let right = right {
                right.insert(value: value)
            } else {
                right = BinarySearchTree(value: value)
                right?.parent = self
            }
        }
    }
    
    // Search Recursive
    public func searchRecursive(value: T) -> BinarySearchTree? {
        if value < self.value {
            return left?.searchRecursive(value: value)
        } else if value > self.value {
            return right?.searchRecursive(value: value)
        } else {
            return self // found it!
        }
    }
    
    // Search Iterative
    public func searchIterative(_ value: T) -> BinarySearchTree? {
        var node : BinarySearchTree? = self
        while let n = node {
            if value < n.value {
                node = n.left
            } else if value > n.value {
                node = n.right
            } else {
                return node
            }
        }
        return nil
    }
    
    // Traverse
    public func traverseInOrder(process: (T) -> Void) {
        left?.traverseInOrder(process: process)
        process(value)
        right?.traverseInOrder(process: process)
    }
    
    public func traversePreOrder(process: (T) -> Void) {
        process(value)
        left?.traversePreOrder(process: process)
        right?.traversePreOrder(process: process)
    }
    
    public func traversePostOrder(process: (T) -> Void) {
        left?.traversePostOrder(process: process)
        right?.traversePostOrder(process: process)
        process(value)
    }
    
    // Map
    public func map(formula: (T) -> T) -> [T] {
        var a = [T]()
        if let left = left { a += left.map(formula: formula) }
        a.append(formula(value))
        if let right = right { a += right.map(formula: formula) }
        return a
    }
    
    public func toArray() -> [T] {
        return map { $0 }
    }
}

extension BinarySearchTree : CustomStringConvertible {
    public var description : String {
        var s = ""
        if let left = left {
            s += "(\(left.description)) <-"
        }
        
        s += "\(value)"
        if let right = right {
            s += "(\(right.description)) <-"
        }
        return s
    }
}
