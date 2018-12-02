//  QueueOptimized.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 02/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

/**
 First-in first-out queue (FIFO)
 
 New elements are added to the end of the queue. Dequeuing pulls elements from the front of the queue.
 
 Enqueuing and dequeuing are O(1) operations.
 */

public struct QueueOptimized<T> {
    public var array = [T?]()
    fileprivate var head = 0
    
    public var isEmpty: Bool {
        return self.array.count == 0
    }
    
    public var count: Int {
        return self.array.count - self.head
    }
    
    public mutating func enqueue(_ element: T) {
        self.array.append(element)
    }
    
    public mutating func dequeue() -> T? {    
        guard self.head < self.array.count, let element = self.array[self.head] else { return nil }
        
        self.array[self.head] = nil
        self.head += 1
        
        let percentage = Double(self.head)/Double(self.array.count)
        if self.array.count > 50 && percentage > 0.25 {
            self.head = 0
        }
        
        return element
    }
    
    public var front: T? {
        if self.isEmpty {
            return nil
        } else {
            return self.array[self.head]
        }
    }
}
