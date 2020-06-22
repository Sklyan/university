import Cocoa

//1. Написать функцию, которая определяет четное число или нет

func secondDigit(digit: Int) -> (String){
    if digit % 2 == 0 {
        return ("Число четное")
    } else {
        return ("Число не четное")
    }
}
print(secondDigit(digit: 3))

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func thirdDigit(digit: Int) -> (String){
    if digit % 3 <= 0 {
        return ("Число кратное 3")
    } else {
        return ("Число не кратное 3")
    }
}
print(thirdDigit(digit: 9))

//3. Создать возрастающий массив из 100 чисел.
var numb = Array (0...99)
print(numb)
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
numb = numb.filter({$0 % 2==1 && $0 % 3>=1})
print(numb)
//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов. Fn=Fn-1 + Fn-2.
func fiboNum (fibo: Int) -> [Decimal]{
    var fibonacci: [Decimal] = [1,1]
for i in 2...fibo {
    fibonacci.append(Decimal(i))
    fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2]
    }
    return fibonacci
}
print(fiboNum(fibo: 100))
//6. * Заполнить массив из 100 элементов различными простыми числами.
