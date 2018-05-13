//
//  ViewController.swift
//  Navigation
//
//  Created by Матвей Кавторов on 19.02.18.
//  Copyright © 2018 Матвей Кавторов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showSecond() {//Это только в одну сторону работает
        if let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") {//Так правильно делать переходы
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

