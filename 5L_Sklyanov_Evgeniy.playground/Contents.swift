import UIKit

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести сами объекты в консоль.
enum motorSt {
    case run, off
}
enum WindowSt {
    case open, close
}
protocol Car {
    var carMark: String {get}
    var color: UIColor {get}
    var year: Int {get}
    var engine: motorSt {get set}
    var window: WindowSt {get set}
}
extension Car {
    mutating func openWindow() {
        window = .open
    }
    mutating func closeWindow() {
        window = .close
    }
    mutating func engineStart() {
        engine = .run
    }
    mutating func engineStop() {
        engine = .off
    }
}
class sportCar: Car {
   var carMark: String
    var color: UIColor
    let year: Int
    var engine: motorSt
    var window: WindowSt
    enum SunRoof {
        case open
        case close
    }
    var sunRoof: SunRoof
    init (carMark: String, color: UIColor, year: Int, engine: motorSt, window: WindowSt, sunRoof: SunRoof) {
        self.carMark = carMark
        self.color = color
        self.year = year
        self.engine = engine
        self.window = window
        self.sunRoof = sunRoof
    }
    
}
var car1 = sportCar(carMark: "BMW", color: .black, year: 2014, engine: .off, window: .close, sunRoof: .close)
var car2 = sportCar(carMark: "Toyota", color: .blue, year: 2004, engine: .off, window: .close, sunRoof: .close)

class trunkCar: Car {
   var carMark: String
    var color: UIColor
    let year: Int
    var engine: motorSt
    var window: WindowSt
    enum Cistern {
        case full
        case free
    }
    var cistern: Cistern
    init (carMark: String, color: UIColor, year: Int, engine: motorSt, window: WindowSt, cistern: Cistern) {
        self.carMark = carMark
        self.color = color
        self.year = year
        self.engine = engine
        self.window = window
        self.cistern = cistern
    }
    
}
var truck1 = trunkCar(carMark: "Mitsubishi", color: .white, year: 2003, engine: .run, window: .close, cistern: .full)
var truck2 = trunkCar(carMark: "KAMAZ", color: .red, year: 2003, engine: .off, window: .close, cistern: .free)

extension sportCar: CustomStringConvertible {
    var description : String {
        return "Автомобиль \(carMark), \(year) года выпуска"
    }
}
extension trunkCar: CustomStringConvertible {
    var description : String {
        return "Автомобиль \(carMark), \(year) года выпуска"
    }
}
print(car1.description)
print(car2.description)
print(truck1.description)
print(truck2.description)
print("Окна автомобиля \(car1.window)")
car1.openWindow()
print("Окна \(car1.description) \(car1.window)")
print("Двигатель грузовика \(truck2.engine)")
truck2.engineStart()
print("Двигатель грузовика \(truck2.engine)")
