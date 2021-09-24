//
//  DeckofCards.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import Foundation



class DeckofCards: CardsDataSource {
    var cards: [String] = []
    var playerName: String?
    
    func generateDeckofCards(){
        let suitNames = ["Clubs","Hearts","Diamonds","Spades"]
        let faceNames = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
        
        for suitIndex in 0...suitNames.count - 1{
            for faceIndex in 0...faceNames.count - 1{
                cards.append("\(faceNames[faceIndex])" + " of " + "\(suitNames[suitIndex])")
            }
        }
    }
    
    func getUserName() -> String {
        return self.playerName ?? "Unamed"
    }
    
    func setUserName(player: String) {
        self.playerName = player
    }
    
    
}
