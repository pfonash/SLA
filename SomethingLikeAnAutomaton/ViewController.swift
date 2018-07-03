//
//  ViewController.swift
//  SomethingLikeAnAutomaton
//
//  Created by Peter Fonash on 2/25/18.
//  Copyright © 2018 Ente. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var onSideA = true
    var thingsHolder = ThingHolder()
    var selectedPickerValue = "Everything" {
        didSet {
            updateWords(basedOn: thingsHolder.prettyToBackendMap[selectedPickerValue]!)
        }
    }
    
    func updateWords(basedOn selection: String) {
        thingsHolder = ThingHolder()
        updateCurrentCollection(from: selection)
        getAllDocuments()
    }
    
    func updateCurrentCollection(from selection: String) {
        gcpFirestore.currentCollection = selection
    }
    
    lazy var gcpFirestore = GCPFirestore()
    var dataFromGCP = Array<[String: Any]>() {
        didSet {
            addThingsToHolder()
            nextThing()
        }
    }
    
    func addThingsToHolder() {
        self.thingsHolder.add(data: dataFromGCP)
    }

    // MARK: Outlets
    @IBOutlet weak var LabelThing: UILabel!
    @IBOutlet weak var ProgressViewThingsRemaining: UIProgressView!
    @IBOutlet var SwipeRightGR: UISwipeGestureRecognizer!
    @IBOutlet var SwipeUpGR: UISwipeGestureRecognizer!
    @IBOutlet var LongPressGR: UILongPressGestureRecognizer!
    @IBOutlet weak var TypeOfThing: UIPickerView!
    
    // MARK: IBActions
    @IBAction func handleSwipeUp(_ sender: UISwipeGestureRecognizer) {
        flip()
    }
    
    @IBAction func handleSwipeRight(_ sender: UISwipeGestureRecognizer) {
        nextThing()
    }
    
    func flip() {
        if onSideA {
            setLabel(text: self.thingsHolder.currentThing.sideA.content)
        } else {
            setLabel(text: self.thingsHolder.currentThing.sideB.content)
        }
        onSideA = !onSideA
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        //importData()
    }
    
    func setup() {
        populatePicker()
        getAllDocuments()
        nextThing()
    }
    
    func populatePicker() {
        self.TypeOfThing.delegate = self
        self.TypeOfThing.dataSource = self
        self.TypeOfThing.showsSelectionIndicator = true
    }
    
    func importData() {
        
        let importer = Importer()
        let things = importer.importJSON()
        gcpFirestore.add(things: things)
    }
    
    func getAllDocuments() {
        
        gcpFirestore.db.collection(gcpFirestore.currentCollection)
            .getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                self.dataFromGCP = querySnapshot!.documents.map {$0.data()}
            }
        }
    }
    
    func nextThing() {
            if let thing = thingsHolder.nextThing() {
            setLabel(text: thing.sideA.content)
            updateProgressBar()
        }
    }
    
    func updateProgressBar() {
        let difference =  self.thingsHolder.allthings.count - thingsHolder.remainingThings.count
        let progress = Float(difference) / Float(self.thingsHolder.allthings.count)
        ProgressViewThingsRemaining.setProgress(progress, animated: true)
    }
    
    func setLabel(text: String) {
        LabelThing.text = text
    }
    
    // MARK: UIPickerViewDataSource protocol functions
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.thingsHolder.typesOfThings.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return thingsHolder.typesOfThings[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPickerValue = thingsHolder.typesOfThings[row] as String
    }

}
