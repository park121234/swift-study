import UIKit

//optional
var carName: String? //뒤에 물음표를 붙여서 값이 있을수도 있고 없을수도 있다고 표현 값없을경우 nil
carName = nil
carName = "제네시스"

//var ActorName: String?

//let num = Int("10") ->  // 타입은 뭘까?
//Int //타입이지만 문자열이 숫자면 인식됨
//let num = Int("10") // 타입을 보면 Int? 이다.

var favoriteMovieStar: String? = nil
let num = Int("10")

// 고급 기능 4가지

// Forced unwrapping  > 억지로 박스 까보기
// Optional binding (if let)  >  부드럽게 박스까기 1
// Optional binding (guard)  >  부드럽게 박스까기 2
// Nil coalescing  >  박스를 까봤더니, 값이 없으면 디폴트 값을 주기

//print (num!)  //! 사용시 옵셔널값은 나오지 않고 value값만 출력되게 할수 있다. (박스까기)

//부드럽게 박스까기
if let unwrappedCarName = carName {  //car name 있을경우 if 출력 없을경우 else 출력됨
    print(unwrappedCarName)
} else {
    print("car name 없다.")
}

// --- 도전과제
// 1. 최애 음식이름을 담는 변수를 작성하고 (String?) ,
// 2.  옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

// 1, 2
let favoriteFood: String? = nil//"양고기"

if let foodName = favoriteFood {
    print(foodName)
} else {
    print("좋아하는 음식 없음")
}

// 3
func printNickName(name: String?) {
    guard let nickName = name else {
        print("nickname 만들어 보자")
        return
    }
    
    print(nickName)
}

printNickName(name: "hihi")
