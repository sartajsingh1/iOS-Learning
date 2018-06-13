//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by SS120239 on 4/28/18.
//  Copyright © 2018 SS120239. All rights reserved.
//

import Foundation


struct PlayingCarddeck {
    
    var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.All{
                cards.append(PlayingCard(suits: suit, rank: rank))
            }
        }
    }
    
   mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.arc4random)
        }else{
            return nil
        }
    }
    
    
}

extension Int {
    var arc4random: Int {
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))
        }else{
            return 0
        }
    }
}
