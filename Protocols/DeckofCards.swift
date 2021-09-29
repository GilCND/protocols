//
//  DeckofCards.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import Foundation

struct DeckofCards: CardsDataSource {
    var  suitNames = ["Clubs","Hearts","Diamonds","Spades"]
    var  faceNames = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
    var article = "of"
}
