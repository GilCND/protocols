//
//  SpanishDeckofCards.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-28.
//
import Foundation

class SpanishDeckofCards: CardsDataSource {
    var cards: [String] = []
    var playerName: String?
    
    func generateDeckofCards(idiom: String?){
       let suitNames = ["Bastos","Cups","Oros","Espadas"]
       let faceNames = ["As", "2", "3", "4", "5", "6", "7", "Jota", "Reina", "Rey"]
        
        for suitIndex in 0...suitNames.count - 1{
            for faceIndex in 0...faceNames.count - 1{
                cards.append("\(faceNames[faceIndex])" + " de " + "\(suitNames[suitIndex])")
            }
        }
    }
}
