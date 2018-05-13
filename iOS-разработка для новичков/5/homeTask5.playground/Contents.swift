//: Playground - noun: a place where people can play

import UIKit

// Последний инструмент для создания своего типа данных, который нам потребуется изучить - перечисление
// Используется в случае если переменная может принимать одно из нескольких виксированных значений (Например время года)

// Ключевое слово - enum

enum NameOfEnum {
    case caseOne
    case caseTwo
}

enum Season {
    case summer
    case autumn
    case winter
    case spring
}

var now: Season = Season.winter
now: Season = .winter // Можно просто так

// Пример использования

enum RequestState {
    case success
    case failed
    case inProgress
    case cancelled
}

func requestData() -> (RequestState, Data?) {
    return (.failed, nil)
    //return (.inProgress, Data())
}

// В принципе ничего особенного, просто не пугайтесь, если увидите где-то

// Итак.
// Задание 1
// Доделайте прошлое задание (На данный момент я получил только 1 файл)

// Задание 2. Почитайте конспект, чтобы быть готовыми при случае

// Тип Any
Any
// Используется чтобы обобщить несколько типов данных в один

// Например массив ["1", 1] имеет тип не [Int] и не [String]. Тогда какой?
let array = ["1", 1]
let arrayAny: [Any] = ["1", 1, 1.0, true]

// Поэтому обычно словарь имеет такой тип
let dict: [String: Any?] = [
    "name" : "Peter",
    "age": 10,
    "is_male": true
]

// Но как достать элемент?

// Оператор as
// Используется чтобы сделать переход от Any к конкретному типу и наоборот

let x = 4 as Any
let y = "qwerty" as Any

// Пока все логично. Ну а назад? Ясно, что не всегда полуится перевести Any в Int
// Поэтому нам предлагается 2 варианта. Думаю вы уже догадываетесь что они означают
let n = x as! Int // Небезопасное раскрытие
let m = x as? Int // Раскрытие с помощью типа optional (кстати Optional это тоже enum (WTF?!))
(Optional.none == nil) // нажмите с кнопкой cmd и посмотрите код

print(n) // Посмотрите тип с кнопокой option
print(m)

//Предпочтительно так
if let number = x as? Int {
    //code here
}

// Вернемся к словарю.
// Попробуйте написать init для структуры, который принимает словарь

// Вот структура
struct Person {
    var name: String
    var age: Int
    var isMale: Bool
    
    init?(from dict: [String: Any?]) { //Специальный optional init
        // Из него можно вернуть nil если не полусилось сконструировать объект
        
        //if(something went wrong) {
          return nil
        //}
        
    }
}

// Вот словарь
let petyaDict: [String: Any?] = [
    "name" : "Peter",
    "age": 10,
    "is_male": true
]

let petyaPerson = Person(from: petyaDict)
