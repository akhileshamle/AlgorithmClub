//  QueueSimple.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 02/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

/**
 First-in first-out queue (FIFO)
 
 New elements are added to the end of the queue. Dequeuing pulls elements frim the front of the queue.
 
 Enqueuing is O(1) operation, dequeuing is O(n). Note: If the queue had been implemented with a linked list, then both would be O(1).
 */

public struct QueueSimple<T> {
    public var array = [T]()
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
}
