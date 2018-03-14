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
    
    init(sideA: Side, sideB: Side) {
        
        self.sideA = sideA
        self.sideB = sideB
    }
}

class MathWord: ThingToLearn {
    
    init(term: Side, definition: Side) {
        super.init(sideA: term, sideB: definition)
    }
   
}

struct Side {
    
    var content: String
    
}
    

    

