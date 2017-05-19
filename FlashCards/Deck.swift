//
//  Deck.swift
//  FlashCards
//
//  Created by Marco Nie on 19/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import Foundation

class Deck {
    
    private var cards: [Flashcard]
    
    init() {
        let cardData = [
            "controller outlet": "A controller view property, marked with IBOutlet.",
            "controller action": "A controller method, marked with IBAction, that is triggered by an interface event."
        ]
        cards = cardData.map { Flashcard(term: $0, definition: $1) }
    }
    
    func redomCard() -> Flashcard? {
        if cards.isEmpty {
            return nil
        } else {
            return cards[Int(arc4random_uniform(UInt32(cards.count)))]
        }
    }
    
}
