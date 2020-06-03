import UIKit

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.

class car {
    enum WindowOpen {
        case open
        case close
    }
    
    var color: UIColor
    var carMark: String
    var year: Int
    var window: WindowOpen
    
    init(color:UIColor, carMark: String, year: Int, window: WindowOpen) {
        self.color = color
        self.carMark = carMark
        self.year = year
        self.window = window
    }
}
    var car1 = car(color: .red, carMark: "BMW", year: 2018, window: .close)
    print(car1.year)

class superCar: car {
    var sunRoof: Bool = true
}
var car2 = superCar(color: .black, carMark: "Honda", year: 2008, window: .open)
car2.sunRoof = false
print(car2.sunRoof)
