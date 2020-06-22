import UIKit

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

struct group {
    var name: String
    var rating: Int
}


extension group: CustomStringConvertible {
    var description: String {
        return "\nName \(name), rating \(rating)"
    }
}

struct queue <T> {
    private var groupOfSwift: [T] = []
    
    mutating func addStudent(element: T) {
        groupOfSwift.append(element)
    }
    
    mutating func delStudent() -> T {
        groupOfSwift.removeLast()
    }
    public var none:Bool {
        return groupOfSwift.count == 0
    }
    public var lastStudent: T? {
        if none {
            print("Пусто!")
            return nil
        } else {
            print("Последний \(groupOfSwift.last!)")
            return groupOfSwift.last
        }
    }
    public var firstStudent: T? {
        if none {
            print("Пусто!")
            return nil
        } else {
            print("Первый \(groupOfSwift.first!)")
            return groupOfSwift.first
        }
    }
    func printQueue() {
        print(groupOfSwift)
    }
}
extension queue {
    func filterOfRating(study:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in groupOfSwift {
            if study(i) {
                result.append(i)
            }
        }
        return result
    }
}
var swiftGroup = queue<group>()
swiftGroup.addStudent(element: .init(name: "John", rating: 5))
swiftGroup.addStudent(element: .init(name: "Anna", rating: 4))
swiftGroup.addStudent(element: .init(name: "Elena", rating: 5))
swiftGroup.addStudent(element: .init(name: "Feudor", rating: 2))
swiftGroup.addStudent(element: .init(name: "Dmitry", rating: 3))

swiftGroup.printQueue()
swiftGroup.lastStudent
swiftGroup.firstStudent

let myFilter = swiftGroup.filterOfRating(study: {$0.rating == 4})
print(myFilter)

