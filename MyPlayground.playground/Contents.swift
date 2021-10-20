import UIKit

var greeting = "Hello, playground"

//ssss
// Tuple

let coordinates = (4, 6)

let X = coordinates.0
let y = coordinates.1

//
let coordinatesNamed = (x: 2, y: 3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

//
let (x3, y3) = coordinatesNamed
x3
y3
//----------------


// Boolean

let yes = true
let no = false

let isFourGreaterThanFive = 4 > 5

if isFourGreaterThanFive { //if 문
    print("참")
} else {
    print("거짓")
}

/* if 조건....  {
    조건이 참인경우에 수행하는 코드를 여기다가...
} else {
    그렇지 않은 경우에 코드는 여기다가...
}
*/

let a = 5
let b = 10

if a > b {
    print("a가 크다")
} else {
    print("b가 크다")
}

let name1 = "Jin"
let name2 = "Jason"

let isTwoNameSame = name1 == name2  //== 비교연산자  =할당의 연산자

if isTwoNameSame {
    print("이름이 같다")
} else {
   print("이름이 다르다")
}

let isJason = name2 == "Jason"
let isMale = false

let jasonAndMale = isJason && isMale  //둘다 만족하면 true
let jasonOrMale = isJason || isMale  //둘중하나 만족하면 true

//-----------------------------------------
//let greetingMessage: String
//if isJason {
//    greetingMessage = "hello Jason"
//} else {
//    greetingMessage = "hello somebody"
//}
//print("Msg: \(greetingMessage)")

let greetingMessage: String = isJason ? "Hello Jason" : "Hello somebody" //조건이 참인경우 왼쪽 할당 아닐경우 오른쪽 할당  조건은 isjason
print("Msg: \(greetingMessage)")


