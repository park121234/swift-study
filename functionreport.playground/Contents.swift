import UIKit

//1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기

//2. 1번에서 만든 함수인데 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기

//3. 성, 이름을 받아서 fullname return 하는 함수 만들기


//1
//func printfullname(firstname: String, lastname: String) {
//    print("fullnameis \(firstname) \(lastname)")
//}
//
//printfullname(firstname: "park", lastname: "jason")

//2
//func printfullname(_ firstname: String, _ lastname: String) {
//    print("fullname is \(firstname) \(lastname)")
//}
//printfullname("park", "jason")

//3
//func fullname(firstName: String, lastName: String) -> String {  //반환할때 화살표를 써서 return을 사용함
//    return "\(firstName) \(lastName)"
//}
//let name = fullname(firstName: "jason", lastName: "park")
//print(name)

//설명
//func fuctionName(externalName param: ParamType) -> ReturnType {
//     //.......
//     return returnValue
//}

// In-out paramter
//var value = 3
//func incrementAndPrint(_ value: inout Int) { //지정된 value 값을 변경하고싶을때 inout 사용
//    value += 1
//    value += 1
//    print(value)
//}
//
//incrementAndPrint(&value)


//--- Function as a param

//func add(_ a:Int, _ b: Int) -> Int {
//    return a + b
//}
//func subtract(_ a: Int, _ b: Int) -> Int {
//    return a - b
//}
//
//var function = subtract
//function(4, 2)
//function = add
//function(5, 2)

//함수 파라미터로 넘기기
//func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int){
//    let result = function(a, b)
//    print(result)
//}
//
//printResult(add, 10, 5)
//printResult(subtract, 10, 5)
