import UIKit
import CoreGraphics

// 처음 주어진 코드
//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//class Student {
//    var grades: [Grade] = []
//
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}------------------------------------------------------------------------------------


//struct Grade {
//    var letter: Character
//    var points: Double
//    var credits: Double
//}
//
//class Person {
//    var firstName: String
//    var lastName: String
//
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//
//    func printMyName() {
//        print("My name is \(firstName) \(lastName)")
//    }
//}
//
//
//class Student: Person { //상속 부모클래스값을 가져옴
//    var grades: [Grade] = []
//
////    var firstName: String
////    var lastName: String
////
////    init(firstName: String, lastName: String) {
////        self.firstName = firstName
////        self.lastName = lastName
////    }
////
////    func printMyName() {
////        print("My name is \(firstName) \(lastName)")
////    }
//}
//
//let jay = Person(firstName: "jay", lastName: "Lee")
//let jason = Student(firstName: "jason", lastName: "Lee")
//
//jay.firstName
//jason.firstName
//
//jay.printMyName()
//jason.printMyName()
//
//let math = Grade(letter: "B", points: 8.5, credits: 3)
//let history = Grade(letter: "A", points: 10.0, credits: 3)
//jason.grades.append(math)
//jason.grades.append(history)
//
//jason.grades.count
//
//
//// 학생인데 운동선수 (student상속)
//class StudentAthelete: Student {
//    var minimumTrainingTime: Int = 2
//    var trainedTime: Int = 0
//
//    func train() {
//        trainedTime += 1
//    }
//}
//
////운동선수인데 축구선수
//class FootballPlayer: StudentAthelete {
//    var footballTeam = "FC Swift"
//
//    override func train() { //상속받은 함수 변경하기 override
//        trainedTime += 2
//    }
//}

//Person > Student > Athelete > Follball Player
//var athelete1 = StudentAthelete(firstName: "yuna", lastName: "Kim")
//var athelete2 = FootballPlayer(firstName: "Heung", lastName: "Son")
//
//athelete1.firstName
//athelete2.firstName
//
//athelete1.grades.append(math)
//athelete2.grades.append(math)
//
//athelete1.minimumTrainingTime
//athelete2.minimumTrainingTime
//
//athelete2.footballTeam
//
//athelete1.train()
//athelete1.trainedTime
//
//athelete2.train()
//athelete2.trainedTime

//상속은 언제 하면 좋을까?
//1. single Responsibility (단일책임)
//2. Type Safety (타입이 분명해야 할때)
//3. Shared Base Classes (기본동작이 다양하게 구현되어야 하는 경우)
//4. Extensibility (확장성이 필요한경우)
//5. Identity (정체를 파악하기 위해)

//생성자 이해하기
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func printMyName() {
        print("My name is \(firstName) \(lastName)")
    }
}


class Student: Person { //상속 부모클래스값을 가져옴
    var grades: [Grade] = []
    
    override init(firstName: String, lastName: String) { //주 이니셜라이져
        super.init(firstName: firstName, lastName: lastName)
    }

}

let jay = Person(firstName: "jay", lastName: "Lee")
let jason = Student(firstName: "jason", lastName: "Lee")

jay.firstName
jason.firstName

jay.printMyName()
jason.printMyName()

let math = Grade(letter: "B", points: 8.5, credits: 3)
let history = Grade(letter: "A", points: 10.0, credits: 3)
jason.grades.append(math)
jason.grades.append(history)

jason.grades.count


// 학생인데 운동선수 (student상속)
class StudentAthelete: Student {
    var minimumTrainingTime: Int = 2
    var trainedTime: Int = 0
    var sports: [String]
    
    init(firstName: String, lastName: String, sports: [String]) {
        // Phase1
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
        
        
        // Phase2 //프로퍼티가 1에서 세팅이 다되어야 그안에서 메소드에 접근 및 프로퍼티 접근이 가능하다.
         self.train()
    }
    
    //이니셜라이져 간단하게 만들기 (부 이니셜라이져)
    convenience init(name: String) {
        self.init(firstName: name, lastName: "", sports: [])
    }
    
    func train() {
        trainedTime += 1
    }
}

//운동선수인데 축구선수
class FootballPlayer: StudentAthelete {
    var footballTeam = "FC Swift"
    
    override func train() { //상속받은 함수 변경하기 override
        trainedTime += 2
    }
}

let student1 = Student(firstName: "jason", lastName: "Lee")
let student2 = StudentAthelete(firstName: "jay", lastName: "Lee", sports: ["Football"])
let student3 = StudentAthelete(name: "Mike")//convenience 라이져
