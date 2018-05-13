//Задание 1.
//Создайте переменные и константы, в которых будете хранить информацию о вашем имени, возрасе и росте
let name: String = "Петя"
var age: Int = 10
var height: Double = 150.3


//Задание 2.
//Напишите функцию, которая переводит радианы в градусы и наоборот

//Сигнатура функции (Название, что принимает, что возвращает)
func degrees(from radians: Double) -> Double {
    let pi = 4.1415
    return radians*180/pi
}

func radians(from degrees: Double) -> Double {
    return degrees/180*Double.pi
}


//Задание 3.
//Напишите функцию, которая принимает на вход массу объекта, а возвращает его вес на Земле. (Google - ваша правая рука)
func weightOfObject(with mass: Double) -> Double {
    let g = 9.81
    return mass*g
}

//Задание 4.
//Напишите функцию, которая принимает на вход несколько параметров - ваше имя, возраст, рост и печатает приветственное сообщение.
//Пример: "Привет, меня зовут Петя, мне 20 лет, мой рост 175.5 см." (stackoverflow.com - ваш лучший друг)
func greeting(name: String, age: Int, height: Double) {
    //удобный способ форматирования
    print("Привет, меня зовут \(name), мне \(age) лет, мой рост \(height) см.")
}

greeting(name: name, age: age, height: height)


//Задание 5* для особо одарённых.
//Напишите функцию, которая принимает 3 числа и возвращает среднее из них (не максимум и не минимум)
//Можно импользовать только функции max, min

func middle(a: Int, b: Int, c: Int) -> Int {
    //Так работает. Возможны и другие решения
    let s = a + b + c
    let minimum = min(a, b, c)
    let maximum = max(a, b, c)
    return s - minimum - maximum
}

print(middle(a: 1, b: 3, c: 2))


import UIKit
//Задание 6*.
//Напишите функцию, которая решает квадратное уравнение по параметрам a, b, c (ax^2+bx+c) и возвращает решение. (Пока только для случаев с 2-мя корнями)

func solve(a: Double, b: Double, c: Double) -> (Double, Double) {
    let D = b*b - 4*a*c
    //чтобы пользоваться функцией sqrt, надо было подключить специальную библиотеку (UIKit или Darwin, Foundation)
    //Поговорим об этом позже
    let x1 = (-b - sqrt(D))/2
    let x2 = (-b + sqrt(D))/2
    return (x1, x2) //Можно вернуть сразу 2 числа (как написано в сигнатуре)
}

solve(a: 1, b: 2, c: 1)
solve(a: 1, b: 3, c: -10)
