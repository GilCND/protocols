//
//  CardsDataSource.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import Foundation

protocol CardsDataSource {
    var playerName: String? { get set }
    var cards: [String] { get set }
    
    func generateDeckofCards()
    func getUserName() -> String
    func setUserName(player: String)
}
