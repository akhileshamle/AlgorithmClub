//  QueueRepository.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 02/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class QueueRepository: NSObject {

    func queueAllOperations() {
        self.queueSimpleOperation()
        self.queueOptimizedOperation()
    }
    
    private func queueSimpleOperation() {
        print("QUEUE SIMPLE")
        var queueSimple = QueueSimple<String>()
        
        queueSimple.enqueue("Sherlock")
        queueSimple.enqueue("Mycroft")
        queueSimple.enqueue("Eurus")
        
        print("Queue Simple, whole: \(queueSimple)")
        
        if let dequeued = queueSimple.dequeue() {
            print("Dequeued: \(dequeued)")
        }
        
        print("Queue Simple, after dequeue: \(queueSimple)")
    }
    
    private func queueOptimizedOperation() {
            print("QUEUE OPTIMIZED")
        var queueOptimized = QueueOptimized<String>()
        queueOptimized.enqueue("Sherlock")
        queueOptimized.enqueue("Mycroft")
        queueOptimized.enqueue("Eurus")
        print("Queue Array: \(queueOptimized.array)")
        print("Queue Count: \(queueOptimized.count)")
        
        if let dequeued = queueOptimized.dequeue() {
            print("Dequeued: \(dequeued)")
        }
        print("Queue Array: \(queueOptimized.array)")
        print("Queue Count: \(queueOptimized.count)")
        
        queueOptimized.enqueue("Watson")
        print("Queue Array: \(queueOptimized.array)")
        print("Queue Count: \(queueOptimized.count)")
        
        if let dequeued = queueOptimized.dequeue() {
            print("Dequeued: \(dequeued)")
        }
        print("Queue Array: \(queueOptimized.array)")
        print("Queue Count: \(queueOptimized.count)")
    }
}
