import UIKit

// closure (이름이 없는 메소드)
//숫자 두개를 곱하는 함수를 가정
//var multipliClosure: (Int, Int) -> Int = {a, b in
//    return a * b
//}

//var multiplyClosure: (Int, Int) -> Int = { return $0 * $1 }
//let result = multipliClosure(4, 2)

//곱하기 기능 클로저로 활용하기   // (input) -> output
//func operateTwoNum(a: Int, b: Int, opertion: (Int, Int) -> Int) -> Int {
//    let result = opertion(a, b)
//    return result
//}
//
//operateTwoNum(a: 4, b: 2, opertion: multipliClosure)

//add 기능으로 클로저 활용
//var addClosure: (Int, Int) -> Int = { a, b in
//    return a + b
//}
//operateTwoNum(a: 4, b: 2, opertion: addClosure)


//나누기 기능 (클로저를 미리 만들지 않고 함수안에 클로저 만들기)
//operateTwoNum(a: 4, b: 2) {a, b in
//    return a / b
//}

//input 과 output이 없는 클로저 , void = 없음
//let voidClosure: () -> Void = {
//    print("ios 개발자")
//}
//voidClosure()


// Capturing Values

//var count = 0 //바깥쪽 변수
//
//let incrementer = {
//    count += 1
//}
//
//incrementer()
//incrementer()
//count


/*
{ (param) -> return type in
    statement
        ....
}
*/

//Example 1: cho simple closure
//let choSimpleClosure = {
//
//}
//choSimpleClosure()

//Example 2: 코드블록을 구현한 closure
//let choSimpleClosure = {
//    print("Hello")
//}
//choSimpleClosure()

//Example 3: 인풋 파라미터를 받는 closure
//let choSimpleClosure: (String) -> Void = { name in
//    print("Hello, 나의 이름은 \(name) 입니다!")
//}
//choSimpleClosure("park")

//Example 4: 값을 리턴하는 closure
//let choSimpleClosure: (String) -> String = { name in
//    let message = "Ios 개발, \(name)님 파이팅 하세요!"
//    return message
//}
//let result = choSimpleClosure("park")
//print(result)

//Example 5: closure를 파라미터로 받는 함수 구현
//func someSimpleFunction(choSimpleClosure: () -> Void) {
//    print("함수에서 호출이 되었어요")
//    choSimpleClosure()
//}
//someSimpleFunction(choSimpleClosure: {
//    print("헬로 코로나 from closure")
//})

//Example 6: Trailing closure
func someSimpleFunction(message: String, choSimpleClosure: () -> Void) {
    print("함수에서 호출이 되었어요, 메세지는 \(message)")
    choSimpleClosure()
}

someSimpleFunction(message: "메로나", choSimpleClosure: {
    print("hello corona")
})

//이게 6 방식
someSimpleFunction(message: "로나로나 메로나") {
    print("헬로 코로나 from closure")
}

