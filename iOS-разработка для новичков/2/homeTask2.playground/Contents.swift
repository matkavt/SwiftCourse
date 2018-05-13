let result = -42
import UIKit


// Задание 1
// Напишите свою функцию минимума и максимума
func myMin(first: Double, second: Double) -> Double {
    if first < second {
        return first
    } else {
        return second
    }
}

func myMax(first: Double, second: Double) -> Double {
    if first > second {
        return first
    } else {
        return second
    }
}

// Задание 2
//Написать функцию, которая говорит, как называется правильный многоугольник с определенным количеством углов
//Пример: 3 - треугольник, 4 - квадрат, .. и так далее
//Если на вход пришло недопустимое количество углов - вернуть "ошибка"
//Если слишком большое количество углов - вернуть "ошибка"
//Подсказка. В русском языке это звучало бы как:
// если условие, то {} иначе если условие, то {}....

func nameOfFigure(with numberOfAngles: Int) -> String {
    
    if numberOfAngles < 3 || numberOfAngles > 20 {
        return "ошибка"
    }
    if numberOfAngles == 3 {
        return "Треугольник"
    } else if numberOfAngles == 4 {
        return "Квадрат"
    } else if numberOfAngles == 5 {
        return "Пятиугольник"
    } else {
        return "\(numberOfAngles)-угольник"
    }
}

//Проверка - если вывелось true, то задание, скорее всего сделано правильно

nameOfFigure(with: 3) == "Треугольник"
nameOfFigure(with: 5) == "Пятиугольник"
nameOfFigure(with: 2) == "ошибка"
nameOfFigure(with: 100) == "ошибка"

nameOfFigure(with: 17)

// Задание 3.
// Найдите ошибку в коде
let number: Double = 42

Int(123.9)
Double(2)
"" + String(12) + "awfa"

let label = UILabel()
//print("\(number)")
label.text = "\(Int(number))"
label.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
label.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)

//print(label.text)

if label.text == "42" {
    print("Правильно")
} else {
    print("Неправильно")
}

// Задание 5*.
// Что происходит???
// Хочу занулить отрицательное число, а положительное оставить как есть. Не работает :(
func positiveOrNull(number: Int) -> Int {
    var result = 0
    if number > 0 {
        result = number
    } else {
        result = 0
    }
    return result
}

positiveOrNull(number: 42)
positiveOrNull(number: -12)

// Задание 6.
// Дизайнер сказал вам сделать холст по макету. Макет прикреплён в архиве.

//Задание 7.
//Также там есть проект и в нем еще одно задание
