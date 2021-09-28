//
//  ViewController.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import UIKit

class ViewController: UIViewController{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var deckOfCards = DeckofCards()
        let spanishDeckofCards = SpanishDeckofCards()
        
        deckOfCards.generateDeckofCards(idiom: "english")
        print(deckOfCards.cards)
        spanishDeckofCards.generateDeckofCards(idiom: nil)
        print(spanishDeckofCards.cards)
    }
}
