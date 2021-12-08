import UIKit

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    //생성자 작성해도 되고 안해도됨.
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

//class 로 변경
class PersonClass {
    var firstName: String
    var lastName: String
    
    //생성자
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
  }
}

var personStruct1 = PersonStruct(firstName: "jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "jason", lastName: "Lee")
var personClass2 = personClass1

//struct1과 2의 값이 각각저장되어서 출력이다름
personStruct2.firstName = "jay"
personStruct1.firstName
personStruct2.firstName

//똑같은것을 바라보고 있기떄문에  출력이 같다.
personClass2.firstName = "jay"
personClass1.firstName
personClass2.firstName

//값을 새로 할당할 경우 class1이 전것을 보고있다.
personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.firstName
personClass2.firstName

//personClass = personClass2 를 선언해주면 같은곳바라봄
personClass1 = personClass2
personClass1.firstName
personClass2.firstName


//Struct를 써야하는 경우
//1. 두 object를 같다, 다르다로 바교해야 하는 경우
//2. Copy된 각 객체들이 독립적인 상태를 가져야 하는 경우
//3. 코드에서 오브젝트의 데이터를 여러 스레드걸쳐 사용할 경우

//Class를 써야하는 경우
//1. 두 object의 인스턴스 자체가 같음을 확인해야 할때
//2. 하나의 객체가 필요하고, 여러대상에 의해 접근되고 변경이 필요한 경우

//(일단 struct로 작성하고, 필요할경우 class로 변경하자)

