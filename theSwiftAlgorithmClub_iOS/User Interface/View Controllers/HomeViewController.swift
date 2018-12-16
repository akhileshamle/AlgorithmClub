//  HomeViewController.swift
//  theSwiftAlgorithmClub_iOS
//  Created by Akhilesh Amle on 01/12/18.
//  Copyright © 2018 AkhileshAmle. All rights reserved.

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    private func setup() {
        self.stackOperation()
        self.queueOpetation()
        self.insertionSortOperation()
        self.binarySearchOperation()
    }
    
    private func stackOperation() {
        let stackRepo = StackRepository()
        stackRepo.stackOperation()
    }
    
    private func queueOpetation() {
        let queueRepo = QueueRepository()
        queueRepo.queueAllOperations()
    }
    
    private func insertionSortOperation() {
        let insertionSortRepo = InsertionSortRepository()
        insertionSortRepo.insertionSortOperation()
    }
    
    private func binarySearchOperation() {
        let binarySearchRepo = BinarySearchRepository()
        binarySearchRepo.binarySearchOperation()
    }
}
