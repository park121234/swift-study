import UIKit

//Dictionary 사용하기
//
//이름과 점수를 넣기 (이름 = key)
//var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake": 90]
//똑같은 코드
//var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake": 90]

//scoreDic["Jason"]
//scoreDic["jay"]

//옵셔널 바인딩으로 안정적으로 가져오기
//if let score = scoreDic["Jason"] {
//    score
//} else {
//    "...score 없음"
}
//
//
//scoreDic = [:]  //값 비우기
//scoreDic.isEmpty //값이 비어있는지 확인
//scoreDic.count   //몇개가 저장되어있는지 확인
//
//
//기존 사용자 업데이트
//scoreDic["Jason"] = 99
//사용자 추가
//scoreDic["Jack"] = 100
//사용자 제거
//scoreDic["Jack"] = nil
//
// For Loop 학생별 이름 점수 출력하기
//for (name, score) in scoreDic {
//    print("\(name), \(score)")
//}
//
//for key in scoreDic.keys { //key확인
//    print(key)
//}

// ------> 도전과제
//1. 이름, 직업, 도시 에 대해서 본인의 딕셔너리 만들기
//2. 여기서 도시를 부산으로 업데이트 하기
//3. 딕셔너리를 받아서 이름과 도시 프린트 하는 함수 만들기

//1.
var myDic: [String: String] = ["name" : "Park", "job" : "IOS Engineer", "city" : "Suncheon"]

//2.
myDic["city"] = "Busan"
myDic

//3.
func printNameAndCity(dic: [String: String]) {
    if let name = dic["name"], let city = dic["city"] {
        print(name, city)
    } else {
        print("----> Cannot Find")
    }
}
printNameAndCity(dic: myDic)



//set = 순서가 없고 유일한 값을 가지는 타임 (중복이없는 유니크한 아이템들을 관리할때 사용)

//var someArray: Array<Int> = [1, 2, 3, 1]
var someset: Set<Int> = [1, 2, 3, 1, 2]

someset.isEmpty
someset.count
someset

someset.contains(1) //들어 있는지 확인
someset.insert(5)
someset
someset.remove(5)
someset
