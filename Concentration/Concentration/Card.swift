//
//  Card.swift
//  Concentration
//
//  Created by Clay on 5/3/19.
//  Copyright © 2019 Clay. All rights reserved.
//

import Foundation

struct Card: Hashable
{
    
    var hashValue: Int {return identifier}
    
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(identifier: Int){
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
