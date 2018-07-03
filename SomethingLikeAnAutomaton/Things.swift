//
//  Things.swift
//  SomethingLikeAnAutomaton
//
//  Created by Peter Fonash on 5/17/18.
//  Copyright © 2018 Ente. All rights reserved.
//

import Foundation

let defaultscore = Float(1.0)

class ThingHolder {
    
    private(set) var allthings: [ThingToLearn] {
        didSet {
        }
    }
    
    let prettyToBackendMap = [
        "Everything": "all-things",
        "Cycling": "cycling",
        "French": "french",
        "Statistics": "statistics",
        "Math": "math",
        "Computer Science":"computer-science",
        "Machine Learning": "machine-learning"
    ]
    
    private(set) var typesOfThings = ["Everything", "Cycling", "French",
                                      "Statistics", "Math", "Machine Learning",
                                      "Computer Science"]
    private(set) var currentThing: ThingToLearn
    private(set) var remainingThings: [ThingToLearn]
    
    init() {
        self.allthings = [ThingToLearn]()
        self.remainingThings = [ThingToLearn]()
        self.currentThing =
            ThingToLearn(sideA: Side(content: "Loading words..."),
                         sideB: Side(content: "Loading words..."),
                         score: defaultscore,
                         last_date_reviewed: NSDate())
    }
        
    func add(data: Array<[String: Any]>) {
        for d in data {
            if let convertedThing = convert(data: d) {
                self.allthings.append(convertedThing)
            }
        }
        remainingThings = allthings
    }
    
    func nextThing() -> ThingToLearn? {
        
        if !self.remainingThings.isEmpty {
            let thing = self.remainingThings.removeFirst()
            self.currentThing = thing
            return thing
        }
        return nil
    }
    
    private func convert(data: [String: Any]) -> ThingToLearn? {
        if let sideA = data["sideA"] as? String {
            if let sideB = data["sideB"] as? String {
                if let score = data["score"] as? Float {
                    if let last_date_reviewed = data["last-date-reviewed"] as? NSDate {
                        return ThingToLearn(sideA: Side(content: sideA),
                                            sideB: Side(content: sideB),
                                            score: score,
                                            last_date_reviewed: last_date_reviewed)
                    }
                }
                return ThingToLearn(sideA: Side(content: sideA),
                                    sideB: Side(content: sideB),
                                    score: 1.0, last_date_reviewed: NSDate())
            }
        }
        return nil
    }    
}
