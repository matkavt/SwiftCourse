import UIKit

// Optional !, ?, ??, Optional("data")

// Обычная переменная
var x: Int = 7
x + 10
print(x)

// Опциональная переменная
var y: Int? = 10
y = nil // NULL, None, null, Nill, nill, Ничего

let first = (name: "Smells Like Teen Spirit", author: "Nirvana", seconds: 277)
let second = (name: "Smoke On The Water", author: "Deep Purple", seconds: 340)
let third = (name: "Immigrant Song", author: "Led Zeppelin", seconds: 247)
let forth = (name: "Long And Lonesome Road", author: "Shoking Blue", seconds: 165)

let songlist = [first, second, third, forth]

func findAudio(by name: String) -> (name: String, author: String, seconds: Int)? {
    for song in songlist {
        if song.name == name {
            return song
        }
    }
    return nil
}

let found = findAudio(by: "Long And Lonesome Road")

// String?, Int?, (String, Int)?, UILabel?, [Int?]?
// Как с этим бороться?

let optionalNumber: Double? = 10

// Вариант 1 (Ненадежный). Делать так в редких случаях

optionalNumber! + 20

// Вариант 2 (Надежный). Старайтесь делать так
if optionalNumber != nil { //Устаревший вариант
    optionalNumber! + 20
} else {
    print("Нет значения")
}

if let number = optionalNumber { //Новый вариант
    number + 10
} else {
    print("Нет значения")
}

// Вариант 3 (Быстрый)
print(optionalNumber ?? "Нет значения")
print((optionalNumber ?? 0) + 20)

let s = String(1234567890)

if let n = Int(";iuvarfr") {
    print(n + 10)
} else {
    print("Не число")
}

// Struct (Структура) - свой тип данных

struct Song { //Объявили структуру
    // Пишем, какие у нее есть свойства (переменные)
    // Методы (Функции)
    var seconds: Int
    var name: String
    var author: String
    
    func play() {
        print("Ту-ту-ту")
    }
    
    func secondsTitle() -> String {
        let min = seconds / 60
        let sec = seconds % 60
        if sec < 10 {
            return "\(min) : 0\(sec)"
        } else {
            return "\(min) : \(sec)"
        }
    }
}

let songTuple = (name: "Smells Like Teen Spirit", author: "Nirvana", seconds: 277)

let songStruct = Song(seconds: 277, name: "Smells Like Teen Spirit", author: "Nirvana")
songStruct.play()
songStruct.secondsTitle()

struct Player {
    var name: String
    var mail: String
    var score: Int
    var isMale: Bool
    var isBanned: Bool
    
//    mutating func ban() {
//        isBanned = true
//    }
    
    func sayHello() {
        print("Привет, меня зовут \(name)! Я уже набрал \(score) очков в игре!")
    }
}

var newPlayer = Player(name: "Петя", mail: "petya@mail.ru", score: 0, isMale: true, isBanned: false)

newPlayer.score += 10
newPlayer.sayHello()


struct Playlist {
    var data: [Song]
    
    func find(by name: String) -> Song? {
        for song in data {
            if song.name == name {
                return song
            }
        }
        return nil
    }
    
    mutating func add(new song: Song) {
        data.append(song)
    }
    
    func lengthInSeconds() -> Int {
        var result = 0
        for song in data {
            result += song.seconds
        }
        return result
    }
}


var numbers: [Int] = []
numbers.count
numbers.append(1)

var i = 0
"qwertyu".uppercased()

// Class ("Большая, сложная" Структура)

class NameOfClass {
    var field1: Int
    var field2: String
    
    init(f1: Int, f2: String) {//Конструктор (Инициализатор) - создает объект
        field1 = f1
        field2 = f2
    }
    
    init() {
        field1 = 0
        field2 = ""
    }
    
    init(original: NameOfClass) {
        field1 = original.field1
        field2 = original.field2
    }
    
    func method() {
        print("42")
    }
}

let object = NameOfClass(f1: 10, f2: "qwe")
object.field1
object.field2
object.method()

let emptyObject = NameOfClass()
emptyObject.field1

let label = UILabel()
label.text = "hello!"
label.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)

// Отличия структуры от класса

//1 - Структура автоматически пишет себе конструктор, для класса нужно самому его написать (можно несколько)

// 2 отличие. Структура всегда копируется, класс не копируется
// Структура передается по ссылке, а класс по значению

struct Structure {
    var color: UIColor
}

class Claaaaaas {
    var color: UIColor
    
    init(color: UIColor) {
        self.color = color
    }
}

var struct1 = Structure(color: #colorLiteral(red: 1, green: 0.08404085115, blue: 0, alpha: 1))
var object1 = Claaaaaas(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))

var struct2 = struct1
var object2 = object1

struct2.color = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
object2.color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

struct2.color
object2.color

struct1.color
object1.color

struct Point {
    var x: Double
    var y: Double
}

// 3 отличие. Структуры нельзя наследовать (Что?)

//class Subclass: SuperClass {
//
//}

class ViewController: UIViewController {
    var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ok")
    }
}

class ColorfullButton: UIButton {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        layer.cornerRadius = 20
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.borderWidth = 8
    }
    
}

