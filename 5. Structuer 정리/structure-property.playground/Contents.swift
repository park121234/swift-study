import UIKit

//struct Person {
//    var firstName: String
//    var lastName: String
//
//    var fullname: String {
//        return "\(firstName) \(lastName)"
//    }
//}
//
//var person = Person(firstName: "jason", lastName: "Lee")
//
//person.firstName
//person.lastName
//
//person.firstName = "Jim"
//person.lastName = "Kim"
//
//person.firstName
//person.lastName
//
//
//person.fullname

//Method
struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0

//var lec = Lecture(title: "IOS Basic")
//
//
//func remainSeats(of lec: Lecture) -> Int {  //남은 강의 좌석을 구하는 함수
//    let remainSeats = lec.maxStudents - lec.numOfRegistered
//    return remainSeats
//}
//remainSeats(of: lec)



//(다른방식)
func remainSeats() -> Int {
    let remainSeats = maxStudents - numOfRegistered
    return remainSeats
 }
    
   mutating func register()  { //Lecture 프로퍼티를 변형시키는 함수의 경우 함수좌측에 mutating 써줘야함
        //등록된 학생수 증가시키기
        numOfRegistered += 1
    }
    //타입 프로퍼티 만들기
    static let target: String = "Anybody want to learn something"
    
    //타입 메소드 만들기
    static func 소속학원이름() -> String {
        return "패캠"
    }
}
var lec = Lecture(title: "IOS Basic")
lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.remainSeats()

Lecture.target
Lecture.소속학원이름()


//메소드 확장
struct Math {
    static func abs(value: Int) -> Int {
        if value > 0  {
            return value
        } else  {
            return -value
        }
    }
}

Math.abs(value: -20)

// 메소드 추가 제곱, 반값
extension Math  {
    static func sqaure(value: Int) -> Int  {
        return value * value
    }
    
    static func half(value: Int) -> Int  {
        return value/2
    }
}
Math.sqaure(value: 5)
Math.half(value: 20)

//제곱, 반값
var value: Int = 3

extension Int  {
    func square() -> Int  {
        return self  *  self
    }
    
    func half()  -> Int  {
        return self/2
    }
}
value.square()
value.half()
