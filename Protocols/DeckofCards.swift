//
//  DeckofCards.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import Foundation

struct DeckofCards: CardsDataSource {
    var cards: [String] = []
    
    mutating func generateDeckofCards(idiom: String?){
        var suitNames: [String] = []
        var faceNames: [String] = []
        var article: String = ""
        
        guard let idiom = idiom else { return }
        switch idiom {
        case "spanish":
            // refference: https://bicyclecards.com/how-to-play/conquian/
            //             https://www.makeplayingcards.com/sell/marketplace/spanish-playing-cards.html
            suitNames = ["Bastos","Cups","Oros","Espadas"]
            faceNames = ["As", "2", "3", "4", "5", "6", "7", "Jota", "Reina", "Rey"]
            article = "de"
            break
        case "english":
            suitNames = ["Clubs","Hearts","Diamonds","Spades"]
            faceNames = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
            article = "of"
            break
        default:
            suitNames = ["Clubs","Hearts","Diamonds","Spades"]
            faceNames = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
            article = "of"
            break
        }
        
        for suitIndex in 0...suitNames.count - 1{
            for faceIndex in 0...faceNames.count - 1{
                cards.append("\(faceNames[faceIndex])" + " \(article) " + "\(suitNames[suitIndex])")
            }
        }
    }
}
