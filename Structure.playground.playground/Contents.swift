import UIKit
/*
//가장 가까운 편의점 찾기

//맨처음 시작시 ... 코드

//struct 관계있는 정보들을 묶어서 표현
struct Location {
    let x: Int
    let y:Int
}

//현재 스토어 위치들
//let store1 = (x: 3, y: 5, name: "gs")
//let store2 = (x: 4, y: 6, name: "seven")
//let store3 = (x: 1, y: 7, name: "cu")
//struct로 묶어서 변경
let store1 = (loc: Location(x: 3, y: 5), name: "gs")
let store2 = (loc: Location(x: 4, y: 6), name: "seven")
let store3 = (loc: Location(x: 1, y: 7), name: "ce" )


//거리 구하는 함수
//func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
//    //피타고라스
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
//    return distance
//}
func distance(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}



//가장 가까운 스토어 구해서 프린트하는 함수
//func printClosestStore(currentLocation:(x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]) {
//    var closestStoreName = ""
//    var closestStoreDistance = Double.infinity
//
//    for store in stores {
//        let distanceToStore = distance(current: currentLocation, target: (x: store.x, y: store.y))
//        closestStoreDistance = min(distanceToStore, closestStoreDistance)
//        if closestStoreDistance == distanceToStore {
//            closestStoreName = store.name
//        }
//    }
//    print("Closest store: \(closestStoreName)")
//}
func printClosestStore(currentLocation: Location, stores:[(loc: Location, name: String)]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
        }
    }
    print("Closest store: \(closestStoreName)")
}


    // Stores Array 세팅, 현재 내 위치 세팅
//    let myLocation = (x: 2, y: 2)
//    let stores = [store1, store2, store3]
let myLocation = Location(x: 2, y: 2)
let stores = [store1, store2, store3]


    
    //printClosestStore 함수 이용해서 현재 가장 가까운 스토어 출력하기
    printClosestStore(currentLocation: myLocation, stores: stores)

*/

//----------------------------------------------------------------------------------------------->
/*
//거리 구하는 함수
func distance(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}

struct Location {
    let x: Int
    let y: Int
}

struct Store { //메소드 만들기 배달가능가역인지
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        return distanceToStore < deliveryRange
    }
}

//현재 스토어 위치들
let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")
let store2 = Store(loc: Location(x: 4, y: 6), name: "seven")
let store3 = Store(loc: Location(x: 1, y: 7), name: "ce" )


//가장 가까운 스토어 구해서 프린트하는 함수
func printClosestStore(currentLocation: Location, stores: [Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    print("Closest store: \(closestStoreName), isDeliverable: \(isDeliverable)")
}


    // Stores Array 세팅, 현재 내 위치 세팅
let stores = [store1, store2, store3]
let myLocation = Location(x: 2, y: 5)


    
    //printClosestStore 함수 이용해서 현재 가장 가까운 스토어 출력하기
    printClosestStore(currentLocation: myLocation, stores: stores)
*/

//도전과제
// 1. 강의 이름, 강사이름, 학생수를 가지는 Struct 만들기 (Lecture)
// 2. 강의 어레이와 강사이름을 받아서 , 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// 1.
struct Lecture {
    let name: String
    let instructor: String
    let numOfStudent: Int
}

// 2.
func printLectureName(from instructor: String, lectures: [Lecture]) { //강사이름받기 instructor: String  //강의 어레이 받기 lectures: [Lecture]
    var lectureName = ""

for lecture in lectures {
    if instructor == lecture.instructor {
        lectureName = lecture.name   //lecture안에 name
    }
}
    
    print("아 그 강사님 강의는요 : \(lectureName)")
}

// 3.
let lec1 = Lecture(name: "ios basic", instructor: "jason", numOfStudent: 5)
let lec2 = Lecture(name: "ios Advanced", instructor: "jack", numOfStudent: 5)
let lec3 = Lecture(name: "ios Pro", instructor: "jim", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]

printLectureName(from: "jason", lectures: lectures)
