//
//  DefinitionController.swift
//  FlashCards
//
//  Created by Marco Nie on 19/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class DefinitionController: UIViewController {
    
    var flashcard: Flashcard?
    
    @IBOutlet weak var definition: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard {
            definition.text = card.definition
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let searchController = segue.destination as? SearchController {
            searchController.flashcard = flashcard
        }
    }
}
