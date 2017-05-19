//
//  ViewController.swift
//  FlashCards
//
//  Created by Marco Nie on 19/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class TermController: UIViewController {

    let deck = Deck()
    var flashcard: Flashcard?
    
    @IBOutlet weak var termLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let flashcard = deck.redomCard() {
            self.flashcard = flashcard
            termLabel.text = flashcard.term
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let definitionController = segue.destination as? DefinitionController {
            definitionController.flashcard = flashcard
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let flashcard = deck.redomCard() {
            self.flashcard = flashcard
            termLabel.text = flashcard.term
        }
    }
    
}

