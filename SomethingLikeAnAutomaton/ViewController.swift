//
//  ViewController.swift
//  SomethingLikeAnAutomaton
//
//  Created by Peter Fonash on 2/25/18.
//  Copyright © 2018 Ente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentThing: ThingToLearn?
    var onSideA = true
    var remainingThings = [ThingToLearn]()
    var things = [ThingToLearn]()
    
    @IBOutlet weak var LabelThing: UILabel!
    @IBOutlet weak var ProgressViewThingsRemaining: UIProgressView!
    
    @IBAction func nextThing(_ sender: UIButton) {
        nextThing()
    }
    
    
    @IBAction func Flip(_ sender: UIButton) {
        
        if onSideA {
            setLabel(text: self.currentThing!.sideA.content)
        }
            
        else {
            setLabel(text: self.currentThing!.sideB.content)
        }
        
        onSideA = !onSideA
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        
        self.things = loadThings()
        self.things = shuffle(things: self.things)
        self.remainingThings = self.things
        nextThing()
        
    }
    
    func nextThing() {
        
        if !self.remainingThings.isEmpty {
            
            let item = self.remainingThings.removeFirst()
            
            if let thing = item as? MathWord {
                self.currentThing = thing
            }
        }
        
        else {
            resetThings()
        }
        
        updateProgressBar()        
        setLabel(text: self.currentThing!.sideA.content)
        
    }
    
    func updateProgressBar() {
        
        let difference = self.things.count - remainingThings.count
        let progress = Float(difference) / Float(self.things.count)
        ProgressViewThingsRemaining.setProgress(progress, animated: true)
        
    }
    
    func resetThings() {
        
        self.remainingThings = self.things
        if self.remainingThings.count <= 0 {
            self.remainingThings.append(ThingToLearn(sideA: Side(content: "No more words.  If you're here, something went wrong."), sideB: Side(content: "Something not great.")))
        }
        self.nextThing()
    }
    
    func setLabel(text: String) {
     
        LabelThing.text = text
    }
    
    func loadThings() -> [ThingToLearn] {
        
        things = [ThingToLearn]()
        
        let mathThings = MathThings()
        
        for subjects in mathThings.getExamThings() {
            
            for (term, def) in subjects {
                
                things.append(MathWord(term: Side(content: term), definition: Side(content: def)))
            }
        }
        
        return things
        
    }
    
    func shuffle(things: [ThingToLearn]) -> [ThingToLearn] {
        
        var shuffledThings = [ThingToLearn]()
        
            for _ in 0..<self.things.count {
                let randomIndex = self.things.count.arc4random
                shuffledThings.append(self.things.remove(at: randomIndex))
            }
        
            return shuffledThings
        }
    
    }


// Extension to get random numbers in a readable way
extension Int {
    
    var arc4random: Int {
        
        if self  > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        }
        else if self < 0 {
            return -(Int(arc4random_uniform(UInt32(self))))
        }
        else {
            return 0
        }
    }
}

