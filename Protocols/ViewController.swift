//
//  ViewController.swift
//  Protocols
//
//  Created by Felipe Gil on 2021-09-24.
//

import UIKit

class ViewController: UIViewController{
    var dataSource: CardsDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = SpanishDeckofCards()
        print(dataSource?.cards)
    }
}
