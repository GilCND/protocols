//
//  CardsDataSource.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import Foundation

protocol CardsDataSource {
    var cards: [String] { get }
    var suitNames: [String] { get }
    var faceNames: [String] { get }
    var article: String { get }
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
typealias GameDataSource = CardsDataSource & UserDataSource

extension CardsDataSource {
    var cards: [String] {
        //functional programming
        suitNames.flatMap { suitName in  // -> [String]
            faceNames.map { faceName in  // -> String
                "\(faceName)" + " \(article) " + "\(suitName)"
            }
        }
    }
}
