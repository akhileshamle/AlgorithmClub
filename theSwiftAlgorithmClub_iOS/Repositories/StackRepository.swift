//  StackRepository.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 01/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class StackRepository: NSObject {

    public func stackOperation() {
        print("\nSTACK")
        /// Stack
        
        // Create a stack and put some elements on it already.
        var stackOfAutobots = Stack(array: ["Optimus Prime", "Bumblebee", "Jetfire", "Jazz", "Ironhide"])
        
        // Add an element to the top of the stack.
        stackOfAutobots.push("Sentinal Prime")
        
        // Print the stack.
        print(stackOfAutobots)
        
        // Remove and return the first element from the stack. This returns "Sentinal Prime".
        if let pop = stackOfAutobots.pop() {
            print("Popped Element: \(pop)")
        }
        
        // Look at the first element from the stack.
        if let top = stackOfAutobots.top {
            print("Top Element: \(top)")
        }
        
        // Check to see if the stack is empty.
        // Returns "false" since the stack still has elements in it.
        if (stackOfAutobots.isEmpty) {
            print("Stack is empty.")
        } else {
            print("Stack is not empty.")
        }
        
        // Check the total number of elements in the stack.
        print("Total Elements in Stack (starting from '0'): \(stackOfAutobots.count)")
    }
}
