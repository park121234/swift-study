//import UIKit
//
////함수로 이름 호출
//func printName() {
//    print("---> My name is park")
//}
//printName()


//param 1개 파라미터
//숫자를 받아서 10을 곱해서 출력한다
//func printMultioleOfTen(value: Int) {
//    print("\(value) * 10 = \(value * 10)")
//}
//printMultioleOfTen(value: 6)


//param 2개
//물건값과 갯수를 받아서 전체 금액을 출력하는 함수
//func printTotalPrice(price: Int, count: Int) {
//print("Total Price: \(price * count)")
//}
//
//printTotalPrice(price: 1500, count: 5) //파라미터는 price, count 함수의 괄호 안에 들어가는것

//param 사용하지않고 value만 넣어도 됨
//func printTotalPrice(가격 price: Int, 갯수 count: Int) {
//    print("Total Price: \(price * count)")
//}
//
//printTotalPrice(가격: 1500, 갯수: 7)


//가격이 같은경우에 int에 가격을 고정시켜놓고 출력
//func printTotalPriceWithDegaultValue(price: Int = 1500, count: Int) {  //int 에 값을넣어주면  갯수만 입력해도 출력값을 얻을수 있음
//    print("Total Price: \(price * count)")
//}

//printTotalPriceWithDegaultValue(count: 5)
//printTotalPriceWithDegaultValue(count: 10)
//printTotalPriceWithDegaultValue(count: 7)
//printTotalPriceWithDegaultValue(count: 1)
//가격이 다른것이 있을경우 price값 추가해주면 됨
//printTotalPriceWithDegaultValue(price: 2000, count: 5)


//func totalPrice(price: Int, count: Int) -> Int { //반환되는 값 타입을 써줌 ->Int
//    let totalPrice = price * count
//    return totalPrice //total price 반환
//}
//
//let calculatedprice = totalPrice(price: 10000, count: 77)
//print(calculatedprice)


