//
//  Flashcard.swift
//  FlashCards
//
//  Created by Marco Nie on 19/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class Flashcard {

    let term: String
    let definition: String
    
    init(term: String, definition: String) {
        self.term = term
        self.definition = definition
    }
    
    convenience init() {
        self.init(term: "Default Term", definition: "Default Definition")
    }
    
}
