import UIKit
// Задание 1
// Напишите струтуру Point
// Внутри должны быть координаты по x, y или долгота и широта
// Также должен быть метод, вычисляющий дистанцию до другой точки

struct Point {
    
    var x: Double
    
    var y: Double
    
    func distance(to other: Point) -> Double {
        let dx = x - other.x
        let dy = y - other.y
        return sqrt(dx*dx + dy*dy)
    }
    
}

// Задание 2
// Напишите класс Polygon (Многоугольник)
// Он должен хранить список своих точек
// + метод, который считает его периметр
// + метод description() (Пример description "Polygon: (0, 0), (3, 3), (1, 1), (2, 2)")
class Polygon {
    
    var points: [Point]
    
    init(points: [Point]) {
        self.points = points
    }
    
    func perimeter() -> Double {
        var result: Double = 0
        for i in 0..<points.count {
            let j = i+1 % points.count
            result += points[i].distance(to: points[j])
        }
        return result
    }

    func description() -> String {
        var s = "Polygon: "
        for point in points {
            s += "(\(point.x), \(point.y)) "
        }
        return s
    }
    
}


// Задание 3
// Напишите класс Triangle, унаследовавшись от класса Polygon. Переопределите метод description.
class Triangle: Polygon {
    
    override func description() -> String {
        var s = "Triangle: "
        for point in points {
            s += "(\(point.x), \(point.y)) "
        }
        return s
    }
    
}

// Задание 4*
// Добавьте в класс Polygon метод square, считающий его площадь (Сложно)

// Задание 5
// Напишите класс CapitalLabel, который всегда при загрузке экрана будет проверять, написан ли текст с большой буквы и исправлять первую букву на большую.

class CapitalLabel: UILabel {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if let notOptionalText = text {
            text = notOptionalText.capitalized
        }
    }
    
}

