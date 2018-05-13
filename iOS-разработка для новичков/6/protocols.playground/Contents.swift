//: Playground - noun: a place where people can play

import UIKit

// Протокол

// Это метка, которая говорит о том, что какой-то класс (или структура) содержит в себе определенные функции

//protocol Movable {
//    func start()
//    func forward()
//}
//
//class Car: Movable {
//    var model: String
//
//    init(model: String) {
//        self.model = model
//    }
//
//    func start() {
//        print("Завожусь")
//    }
//
//    func forward() {
//        print("Еду вперед")
//    }
//
//}
//
//let tesla = Car(model: "Tesla")
//
//tesla.start()
//tesla.forward()
//
//
//class Truck: Movable {
//
//    func load() {
//        print("Загрузился")
//    }
//
//    func start() {
//        print("Завожусь")
//    }
//
//    func forward() {
//        print("Медленно еду вперед")
//    }
//
//}
//
//let truck = Truck()
//
//let garage: [Movable] = [tesla, truck]
//
//for auto in garage {
//    auto.start()
//    auto.forward()
//}

protocol ButtonDelegate {
    func didClickOnButton()
}

class Button {
    
    var delegate: ButtonDelegate?
    
    @IBAction func click() {
        print("нажатие")
        delegate?.didClickOnButton()
    }
    
}

class Player {
    var button = Button()
}

class GameView {
    let player = Player()
}

class ViewController: ButtonDelegate {
    var color: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    let gameView = GameView()
    
    func didClickOnButton() {
        color = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
    }
}

let vc = ViewController()
vc.gameView.player.button.delegate = vc

vc.gameView.player.button.click()

vc.color


