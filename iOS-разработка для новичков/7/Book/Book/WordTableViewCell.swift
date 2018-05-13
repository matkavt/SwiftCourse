//
//  WordTableViewCell.swift
//  Book
//
//  Created by Матвей Кавторов on 19.02.18.
//  Copyright © 2018 Матвей Кавторов. All rights reserved.
//

import UIKit

class WordTableViewCell: UITableViewCell {

    @IBOutlet weak var leftLabel: UILabel!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    var delegate: Delegate?
    
    var index: Int = 0
    
    @IBAction func click() {
        delegate?.didTap(index: index)
    }
    
}
