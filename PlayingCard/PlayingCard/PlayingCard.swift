//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by SS120239 on 4/28/18.
//  Copyright © 2018 SS120239. All rights reserved.
//

import Foundation

struct PlayingCard {
    
    var suits:Suit
    var rank:Rank
    
    enum Suit:String {
        case spades = "♠️"
        case diamonds = "♦️"
        case hearts = "❤️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, Suit.diamonds, Suit.hearts, Suit.clubs]
    }
    
    enum Rank {
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int{
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
                
            }
        }
        
        static var All:[Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10{
                allRanks.append(Rank.numeric(pips))
            }
           allRanks += [Rank.face("J"),.face("Q"),.face("K")]
            return allRanks
        }
    }
    
    
    
}
