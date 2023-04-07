import UIKit

// 변수/상수/연산자/조건문/반복문/튜플

//튜플 사용
let iOS = (language: "Swift", 5) //언어만 네임드 튜플 사용
iOS.language
iOS.1 // 접근방식
//switch문 튜플사용
switch iOS {
case ("Swift", 5):
    print("Swift 버전 5")
case ("Java", 8):
    print("Java 버전 8")
default:
    break
}

//삼항연산자: 조건에 따라 두가지 선택지가 제시되는 경우 주로 사용 => 조건 ? 참 : 거짓 형태
var three = iOS == ("Swift", 5) ? "참" : "거짓"

// 구구단 출력
for i in 2...9 {
    for j in 1...9 {
        print("\(i) X \(j) = \(i * j)")
    }
}

// 1 ~ 100 중 3의 배수 찾기
for i in 1...100 {
    guard i % 3 == 0 else { continue }
    print("3의 배수 발견: \(i)")
}

// 반복문, 조건문 사용 문자열 출력
for i in 0...4 {
    switch i {
    case 0:
        print("😁")
    case 1:
        print("😁😁")
    case 2:
        print("😁😁😁")
    case 3:
        print("😁😁😁😁")
    case 4:
        print("😁😁😁😁😁")
    default:
        break
    }
}

// 반복문, 조건문 사용 문자열 출력2
var smile = "😁"
for _ in 0...4 {
    print(smile)
    smile += "😁"
}

// 반복문, 조건문 사용 문자열 출력3
for i in 0...4 {
    for j in 0...4 {
        if j <= i {
            print("😁", terminator: "") // 이어쓰기
        }
    }
    print() // 줄바꿈
}



// 함수 정의
func function(_ a: Int, _ b: Int) -> Int { // 파라미터 a, b 와 리턴 형태 Int
    var f = 0
    f = a + b
    print(f)
    return f
}
//함수 호출, 아규먼트 레이블 생략(와일드카드패턴 사용)
function(1, 2)

//함수 overloading: 함수 이름 1개에 여러개의 함수를 대응 시킨 것(이름 재사용) => 파라미터 수/타입, 아규먼트 레이블, 리턴타입 변경으로 가능

//guard문과 if문 비교 => if에 비해 가독성 좋아지고, early exit 가능, 여러개의 옵셔널 타입 안전하게 언래핑, 조건 걸러내기에 사용
@discardableResult //리턴값을 사용하지 않을 경우 컴파일러에게 알려주는 어트리뷰트 키워드
func guardIf(a: Int = 5) -> String{
    if a == 5 {
        print("if문 입니다.")
    } else {print("조건이 만족하지 않습니다.")}
    
    guard a == 5 else {print("조건이 만족하지 않습니다."); return ""} // 조건 감시
    print("guard문 입니다.")
    
    return "swift"
}

//문자열 중 한글자 랜덤으로 뽑아내는 함수
func randomStr(inputString a: String) -> String {
    guard let str = a.randomElement() else {return ""} //옵셔널 언래핑
    
    return String(str)
}
print(randomStr(inputString: "string random"))

//소수 판별 함수
func primeNumber(a: Int){
    for i in 2..<a {
        guard a % i != 0 else {print("소수가 아님"); return}
    }
    print("소수입니다.")
}
primeNumber(a: 97)

//팩토리얼 함수
func factorial(fac a: Int) -> Int {
    var r = 1
    for i in 1...a {
        r *= i
    }
    print("\(a)! = \(r)")
    return r
}
factorial(fac: 3)

/*              switch문의 제어전송문                      /   반복문의 제어전송문
break:        케이스에서 실행문 없을 경우 반드시 사용            /   가장 인접한 반복문의 사이클 중지
fallthrough: switch문에서 매칭된 값이 있어도 다음 문장을 실행하기  /   X
continue:               X                              /   반복문의 다음 사이클로 넘어가서 실행

 함수의 제어전송문
return: 리턴 값이 있는 함수인 경우 표현식 실행, 그 결과 반환하며 함수 종료
throw: 에러 발생 가능 함수에서 에러 타입 리턴하면서 함수 종료 */

//inout 키워드
func inOutKeyward(a: inout Int, b: inout Int){
    print("inout 키워드는 파라미터에 변수 원본을 직접 사용!")
}

/*옵셔널: 값이 없는 메모리 공간에 접근 시 에러 방지 -> Enum 타입으로 감싸고, 값 없을 시 nil 반환
옵셔널 임시타입으로 래핑된 값을 언래핑해서 사용: 옵셔널 바인딩*/

//강제 언래핑 ! - 언래핑 시 값이 없고 조건 없을 시 런타임 에러
var optionalExam: Int?
optionalExam = 1
optionalExam!
if optionalExam != nil {
    print(optionalExam!)
}
// if let, guard let 바인딩 - 언래핑해서 값이 있어야 상수에 담김
func optionalBindExam(_ a: Int?){
    if let optionalBind = a {
        print(optionalBind)
    }
    guard let optionalBind1 = a else {return}
    print("옵셔널바인딩 성공")
}
optionalBindExam(1)

// Nil-Coalescing 사용 - 옵셔널 표현식이 nil 일 때, 기본값 제시
var optionalNilCoalescing: Int?
print(optionalNilCoalescing ?? 2)
//삼항연산자표현: optionalNilCoalescing != nil ? optionalNilCoalescing! : 2

//컬렉션
//Array - 순서 존재(인덱스) 요소들 모임, 동일 데이터 타입만 가능(Any 예외)
var arrayExam: [Int] = [1, 3, 5, 7, 9]
arrayExam.append(5) //추가 - 맨뒤, 중복요소가능
arrayExam.insert(5, at: 0) //삽입 - 인덱스 입력
arrayExam.remove(at: 0) //인덱스로 삭제

//Dictionary - 키:값, 키 유일성, 값 중복 가능, 동일한 타입 쌍만 가능, 키 값 해셔블, 값에 배열 사용가능
var dicExam: [Int: Int] = [1:1, 2:2, 3:3]
print(dicExam.keys.sorted()) //키 값 정렬 후 반환
dicExam.updateValue(4, forKey: 4) //update로 삽입, 수정, 추가

//Set - 순서 없음, 각 요소 유일성(중복 추가해도 적용x), 정렬순서보다 검색속도가 중요할 때 사용
var setA: Set<Int> = [2, 4, 6, 8, 10]
var setB: Set<Int> = [1, 2, 3, 4, 5, 6, 8]
setA.union(setB) //집합연산 가능

// KeyValuePairs - 5.2에 새로 도입, 순서가 있는 딕셔너리, 키값 해셔블 필요x

//열거형(Enumeration) - 타입 정의, 코드 가독 안정성 높아짐
//원시값(Raw Value)
enum weekday: Int{ //케이스와 숫자가 매칭 - monday = 0 ~ sunday = 6
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}
weekday.monday.rawValue

//연관값(Associated Value) - 케이스가 카테고리 역할, 보다 구체적인 정보 저장 시
enum Computer {
    case cpu(core: Int, ghz: Double)
    case ram(Int, String)
    case hardDisk(gb: Int)
}
var chip: Computer = Computer.cpu(core: 7, ghz: 2.4)
var chip1: Computer = Computer.ram(16, "DDR4")
print("chip: \(chip)  chip1: \(chip1)")

//옵셔널 열거형 - 스위치 사용 표현식에 대한 분기처리 적합, 스위치로 옵셔널 쉽게 사용
enum SomeEnum {
    case right
    case left
}
let sx: SomeEnum? = .left
let sy: SomeEnum? = .right
//원칙적 사용
switch sx{
case .some(let value):
    switch value{
    case .left:
        print("왼쪽")
    case .right:
        print("오른쪽")
    }
case .none:
    print("직진")
}
//편의기능 사용
switch sy{
case .left:
    print("왼쪽")
case .right:
    print("오른쪽")
case nil:
    print("직진")
}
