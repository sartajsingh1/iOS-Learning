//
//  ViewController.swift
//  PlayingCard
//
//  Created by SS120239 on 4/28/18.
//  Copyright © 2018 SS120239. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var deck = PlayingCarddeck()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }

  }

