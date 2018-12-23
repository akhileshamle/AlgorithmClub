//  HomeViewController.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 01/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class HomeViewController: UIViewController {

    // MARK: - View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    // MARK: - Private
    private func setup() {
        self.stackOperation()
        self.queueOpetation()
        self.insertionSortOperation()
        self.binarySearchOperation()
        self.binarySearchTreeOperation()
    }
    
    // Stack
    private func stackOperation() {
        let stackRepo = StackRepository()
        stackRepo.stackOperation()
    }
    
    // Queue
    private func queueOpetation() {
        let queueRepo = QueueRepository()
        queueRepo.queueAllOperations()
    }
    
    // Insertion Sort
    private func insertionSortOperation() {
        let insertionSortRepo = InsertionSortRepository()
        insertionSortRepo.insertionSortOperation()
    }
    
    // Binary Search
    private func binarySearchOperation() {
        let binarySearchRepo = BinarySearchRepository()
        binarySearchRepo.binarySearchOperation()
    }
    
    // Binary Search Tree
    private func binarySearchTreeOperation() {
        let binarySearchTreeRepo = BinarySearchTreeRepository()
        binarySearchTreeRepo.binarySearchTreeOperation()
    }
}
