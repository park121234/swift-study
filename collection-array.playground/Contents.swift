import UIKit

//Array 사용
var evenNumbers: [Int] = [2, 4, 6, 8]
//let evenNumbers2: Array<Int> = [2, 4, 6, 8]


//element 추가
evenNumbers.append(10)
//여러개 추가
evenNumbers += [12, 14, 16]
evenNumbers.append(contentsOf: [18, 20])

//값이 비어있는지 확인하는 방법
//let isEmpty = evenNumbers.isEmpty  (중요)

//element 개수 확인
//evenNumbers.count    (중요)

//evenNumbers.min() //제일 작은값
//evenNumbers.max() //제일 큰 값

//각 배열 값 확인
//var firstItem = evenNumbers[0]
//var secondItem = evenNumbers[1]
//var lastItem = evenNumbers[9]


// ----->

let firstThree = evenNumbers[0...2]  //[0, 1, 2] 값 가져오기

//element 에 입력한 값이 있는지 확인
evenNumbers.contains(3)


evenNumbers.insert(0, at: 0) // 0번째 배열에 0값 넣기
evenNumbers //0배열에 0값이 추가되고 하나씩 밀림

//evenNumbers.removeAll() // 배열값 다 지우기
//evenNumbers = [] // 다른 방법
evenNumbers

evenNumbers.remove(at: 0) //0번 배열값 빼기 , 배열 값 하나 지우기
evenNumbers //다시 한칸씩 앞으로 당겨짐

evenNumbers[0] = -2 // 특정 인덱스 업데이트 (값이 교체됨)
evenNumbers

evenNumbers[0...2] = [-2, 0, 2] //여러개 한번에 업데이트
evenNumbers

//evenNumbers.swapAt(0, 1) //0번 배열과 1번 배열 위치 스위칭  스왑


//num값만 출력하기
//for num in evenNumbers {
//    print(num)
//}


//인덱스 값과 num값 같이 출력하기                (중요)
for (index, num) in evenNumbers.enumerated() {
    print("idx: \(index), value: \(num)")
}


let firstThreeRemoved = evenNumbers.dropFirst(3) //first부터 배열3개를 제외하고 보여줌 evenNumbers값은 삭제되지 않는다. 그렇기때문에 새로 변수를 만들어서 값을 할당해서 사용할수 있음
evenNumbers
firstThreeRemoved

let lastThreeRemoved = evenNumbers.dropLast(3) //뒤 부터
lastThreeRemoved
evenNumbers


let firstsThree = evenNumbers.prefix(3)
firstsThree //처음 3개값 가져오기

let lastThree = evenNumbers.suffix(3)
lastThree //마지막 3개값 가져오기
