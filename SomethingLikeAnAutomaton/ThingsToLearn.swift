//
//  ThingsToLearn.swift
//  SomethingLikeAnAutomaton
//
//  Created by Peter Fonash on 2/1/18.
//  Copyright © 2018 Ente. All rights reserved.
//

import Foundation

class ThingToLearn {
  
    var sideA: Side
    var sideB: Side
    var score: Float
    var last_date_reviewed: NSDate
    var type = "thing"
        
    init(sideA: Side, sideB: Side, score: Float, last_date_reviewed: NSDate) {
        self.sideA = sideA
        self.sideB = sideB
        self.score = score
        self.last_date_reviewed = last_date_reviewed
    }
}

class MathWord: ThingToLearn {
    
    init(term: Side, definition: Side, score: Float, last_date_reviewed: NSDate) {
        super.init(sideA: term, sideB: definition, score: score, last_date_reviewed: last_date_reviewed)
        self.type = "math"
    }
}

struct Side {
    var content: String
}
    

    

