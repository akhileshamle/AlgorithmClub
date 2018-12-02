//  Stack.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 01/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

/**
 Stack
 
 A stack is like an array but with limited functionality. You can only push to add a new element to the top of the stack, pop to remove the element from the top, and peek at the top element without popping it off.
 
 A stack gives you a LIFO last-in first-out order. The element you pushed last is the first one to come off with the next pop.
 
 Push and pop are O(1) operations.
 
 ## Usage
 ````
 var myStack = Stack(array: [])
 myStack.push(10)
 myStack.push(3)
 myStack.push(57)
 myStack.pop() // 57
 myStack.pop() // 3
 ````
 
 Description:
 Notice that a push puts the new element at the end of the array, not the beginning. Inserting at the beginning of an array is expensive, an O(n) operation, because it requires all existing array elements to be shifted in memory. Adding at the end is O(1); it always takes the same amount of time, regardless of the size of the array.
 
 Fun fact about stacks: Each time you call a function or a method, the CPU places the return address on a stack. When the function ends, the CPU uses that return address to jump back to the caller. That's why if you call too many functions -- for example in a recursive function that never ends -- you get a so-called "stack overflow" as the CPU stack has run out of space.
 */

public struct Stack<T> {
    
    /// Datastructure consisting of a generic item.
    public var array = [T]()
    
    /// The number of items in the stack.
    public var count : Int {
        return array.count
    }
    
    /// Verifies if the stack is empty.
    public var isEmpty : Bool {
        return array.isEmpty
    }
    
    /**
     Pushes an item to the top of the stack.
     
     - Parameter element: The item being pushed.
     */
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    /**
     Removes and returns the item at the top of the stack.
     
     - Returns: The item at the top of the stack.
     */
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    /// Returns the element at the top of the stack.
    public var top: T? {
        return array.last
    }
}
