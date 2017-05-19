//
//  SearchController.swift
//  FlashCards
//
//  Created by Marco Nie on 19/05/2017.
//  Copyright © 2017 Marco Nie. All rights reserved.
//

import UIKit

class SearchController: UIViewController {
    
    var flashcard: Flashcard?
    
    let baseSearchURL = "https://google.com/search?q=apple developer"
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard,
            let escapedURLString = searchURLString(base: baseSearchURL, term: card.term),
            let url = URL(string: escapedURLString) {
                webView.loadRequest(URLRequest(url: url))
        }
    }
    
    func searchURLString(base: String, term: String) -> String? {
        return "\(base) \(term)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
}
