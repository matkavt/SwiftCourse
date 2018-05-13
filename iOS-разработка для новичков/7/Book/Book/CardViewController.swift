//
//  CardViewController.swift
//  Book
//
//  Created by Матвей Кавторов on 19.02.18.
//  Copyright © 2018 Матвей Кавторов. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    var word: Word?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = word?.translation
        secondLabel.text = word?.text
        randomizeColors()
    }
    
    func randomizeColors() {
        let index1 = Int(arc4random_uniform(7))
        let index2 = Int(arc4random_uniform(7))
        let colors = [#colorLiteral(red: 1, green: 0.08404085115, blue: 0, alpha: 1), #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), #colorLiteral(red: 0.9887863248, green: 1, blue: 0, alpha: 1), #colorLiteral(red: 0.03212521774, green: 1, blue: 3.330669074e-16, alpha: 1), #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), #colorLiteral(red: 0.8189184687, green: 0.0127219946, blue: 1, alpha: 1)]
        let color1 = colors[index1]
        let color2 = colors[index2]
        firstLabel.textColor = color1
        secondLabel.textColor = color2
    }
    
}
