//
//  ViewController.swift
//  Book
//
//  Created by Матвей Кавторов on 19.02.18.
//  Copyright © 2018 Матвей Кавторов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    let words: [Word] = [
        Word(text: "Собака", translation: "Dog"),
        Word(text: "Кошка", translation: "Cat"),
        Word(text: "Мышь", translation: "Mouse"),
        Word(text: "Человек", translation: "Man"),
        Word(text: "Волк", translation: "Wolf")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        saveData()
    }
    
    func saveData() {
        //Сохранять можем только простые типы
//        UserDefaults.standard.set("Собака", forKey: "test")
        
//        let s = UserDefaults.standard.string(forKey: "test")
//        print(s)
        
//        let word = Word(text: "Собака", translation: "Dog")
//        let encoder = PropertyListEncoder()
//        let data = try? encoder.encode(word)
//        UserDefaults.standard.set(data, forKey: "dogData")
        
        if let data = UserDefaults.standard.data(forKey: "dogData") {
            let decoder = PropertyListDecoder()
            let word = try? decoder.decode(Word.self, from: data)
            print(word)
        }
    }

}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wordCell") as! WordTableViewCell
        
        let row = indexPath.row
        let wordToShow = words[row]
        
        cell.leftLabel.text = wordToShow.text
        cell.rightLabel.text = wordToShow.translation
        cell.delegate = self
        cell.index = row
        
        return cell
    }
    
}

extension ViewController: Delegate {
    
    func didTap(index: Int) {
        mainLabel.text = "\(words[index].translation) TAPPED"
        if let vc = storyboard?.instantiateViewController(withIdentifier: "cardVC") as? CardViewController {
            vc.word = words[index]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("выбрана ячейка")
        let index = indexPath.row
        if let vc = storyboard?.instantiateViewController(withIdentifier: "cardVC") as? CardViewController {
            vc.word = words[index]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

