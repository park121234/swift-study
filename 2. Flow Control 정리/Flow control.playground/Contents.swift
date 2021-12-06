import UIKit


//While
//조건 > 코드수행 > 조건 > 코드수행
//var i = 7
//while i < 10 {
//    print(i)
//    i += 1
//}

//repeat while
//코드수행 > 조건 > 코드수행 > 조건
//i = 0
//repeat {
//    print(i)
//    i += 1
//} while i < 10 안됨


//var i = 0
//while i < 10 {
//    print(i)
//    if i == 5 {  //i가 5를 만족하면 반복 x
//        break    //조건 만족할경우 나감
//}
//    i += 1
//}


//For loop

//let closeRange = 0...10 //0부터 10까지
//let halfclosedRange = 0..<10 //0부터 9까지

//var sum = 0
//for i in closeRange { //closeRange 안에서 i에 1씩 더한값을 출력
//    print("\(i)")
//    sum += i
//}
//print("total sum : \(sum)") //1~10 을 전부 더한 값


//범위 내에서 짝수 구하기
//for i in closeRange {
//    if i % 2 == 0 { //2로 나눴을때 나머지 = 0 (짝수)
//        print("짝수 \(i)")
//    }
//}


//다른방법 (짝수구하기)
//for i in closeRange where i % 2 == 0 {
//    print ("짝수 \(i)")
//}


//특정부분 건너뛰기
//0~10에서 3 빼고 출력하기
//for i in closeRange {
//    if i == 3 { //i가 3일때
//        continue //건너뛰기
//    }
//
//    print("\(i)")
//}


//switch
let num = 5 //(int 타입).  //0~10 사이 = csae 0...10:
switch num {
case 0:
    print("---> 0입니다.") //0일경우 출력
case 10:
    print("---> 10입니다.")//10일경우 출력
default:
    print("---> 나머지 입니다.")//case 제외값 출력
}

//(string 타입)
//let pet = "cat"
//switch pet{
//case "dog":  //여러개 추가하고 싶을때 case"dog", "cat", "bird":
//    print("---> 집동물이네요")
//case "cat":
//    print("---> 집동물이네용")
//default:
//    print("---> 잘모르겠습니다.")
//}


//where 문 이용 조건검사
//let num = 5
//switch num {
//case _ where num % 2 == 0:
//    print("---> 짝수")
//default:
//    print("--->홀수")
//}


//let coordinate = (x: 0, y: 10)
//
//switch coordinate{
//case (0, 0):
//    print("--->  원점이네요")
//case (_, 0): //y축 0일경우 x가 뭐든 출력
//    print("---> x축 이네요")
//case (0, _): //x축 0일경우 y가 뭐든 출력
//    print("---> y축 이네요")
//default:
//    print("---> 좌표 어딘가")
//}

let coordinate = (x: 10, y: 10)

switch coordinate{
case (0, 0):
    print("--->  원점이네요")
case (let x, 0): //조건 맞을경우 x값 출력시키고 싶을때
    print("---> x축 이네요, x:\(x)")
case (0, let y): //조건 맞을경우 y값 출력시키고 싶을때
    print("---> y축 이네요, y:\(y)")
case (let x, let y) where x == y: //where이용하여 조건추가
    print("---> x,y 값이 같음 x:\(x), y:\(y)")
case (let x, let y):
    print("---> 좌표 어딘가, x:\(x), y:\(y)")
}


