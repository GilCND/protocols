//
//  ViewController.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import UIKit

class ViewController: UIViewController {
    var deckOfCards = DeckofCards()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        deckOfCards.generateDeckofCards()
        print(deckOfCards.cards)
        deckOfCards.setUserName(player: "Gil")
        print("Player: " + deckOfCards.getUserName())
    }
}
