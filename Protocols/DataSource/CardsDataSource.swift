//
//  CardsDataSource.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import Foundation

protocol CardsDataSource {
    var cards: [String] { get }
    
    mutating func generateDeckofCards(idiom: String?)
}

protocol UserDataSource {
    var userName: String { get }
    var score: Int { get }
    var bestScore: Int { get }
    var money: Double { get }
    
    func saveUserName(UserName: String)
    func saveScore()
    func calculateMoney()
}
