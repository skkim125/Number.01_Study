import UIKit

/*
 
 제너릭 코드
 - 정의한 요구사항에 따라 모든 타입에서 동작할 수 있는 유연하고 재사용 가능한 함수와 타입 작성 가능
 - 중복을 피하고 명확하고 추상적인 방식으로 의도를 표현하는 코드를 작성 가능
 
 */

// ex) 여러 타입에서 동작할 수 있는 함수(재작성할 필요 없이 타입만 바꾸어 재사용 가능)

//func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var someInt = 82
//var anotherInt = 204
//
//swapTwoInts(&someInt, &anotherInt) // inout 파라미터에는 '&'를 붙혀줘야 함
//print("\(someInt) | \(anotherInt)")
//
//
//
//func swapTwoStrings(_ a: inout String, _ b: inout String) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}


// -> 제너릭 함수로 제작한 버전
// T : 임의의 타입, 타입 파라미터의 예시, 보통 단일 문자를 사용
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 9
var anotherInt = 812

swapTwoValues(&someInt, &anotherInt)
print("\(someInt) | \(anotherInt)")


var someString = "Hello"
var anotherString = "Halo"

swapTwoValues(&someString, &anotherString)
print("\(someString) | \(anotherString)")


//--------------------------------------------------------------------


// 클로저(closure)
// 함수나 클로저표현식과 같은 독립적인 코드블록 + 코드블록 주변의 하나이상의 변수가 결합된 것
// 왜 필요한가? -> 이름 만들 필요X, 내가 함수를 지정하면 맘대로 사용가능


// ex)
func functionA() -> () -> Int {
    var counter = 0
    
    func functionB() -> Int {
        return counter + 10
    }
    
    return functionB
}

let myClosure = functionA()
//let result = functionB()


//-------------------------------------------------------------------------------------------


// 정렬 메서드 sorted(by:) : 원본 배열과 같은 타입과 같은 크기의 올바르게 정렬된 요소로 새로운 배열로 변환

let names = ["애덤 크래시","애덤 리바인","브루노 마스","해리 스타일스", "이마세"]


// 정배열
func sortedA(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}

var correctNames = names.sorted(by: sortedA)

print(correctNames)


// 역배열
func sortedB(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reverseNames = names.sorted(by: sortedB)

print(reverseNames)


//-----------------------------------------------------------------------------------


//위의 정렬 메서드 클로저 표현식은 다소 긴 방식의 코드임
//in-line으로 작성하는 것이 코드가 짧아지는 편리함이 있음

/*
 
< 클로저 표현구 >
 
 { ( parameters ) -> return type in
     statements
   }
 
 */


// 형식 1
//let closure1 = { (a: Int, b: Int) -> Int in
//    return a * b
//}
//print(closure1(5,9))

//단축1)
let closure1 = { (a: Int, b: Int) in a * b }
print(closure1(5,9))



// 형식 2
let closure2: (Int, Int) -> Int = { a, b in
    a + b
}
print(closure2(2,7))


// 형식 3 : 클로저 자체가 동작 값을 가진 형태
let closure3 = {
    print("\(8)")
}
closure3()


//-------------------------------------------------------------


// 후행클로저
// 함수의 마지막 인자로 클로저 표현식을 함수에 전달해야하고 클로저 표현식이 긴 경우, 후행클로저 작성이 유용할 수 있음
// 함수의 인자이지만 함수 호출의 소괄호 다음에 작성
// 후행클로저 구문 사용 시 함수호출의 일부로 첫번째 클로저 인자라벨 작성하지 않아도 됨

// 형식
//func someFunctionThatTakesClosure(closure: () -> Void){
//    //function body
//}

// 간소화 1
//func someFunctionThatTakesClosure(closure: {
//    //function body
//})

// 간소화 2
func someFunctionThatTakesClosure() {
    //function body
}



//-----------------------------------------------------------------


/*

 <캡쳐값>
 
 클로저 = 정의된 둘러싸인 컨텍스트에서 상수와 변수를 캡처할 수 있음
 이로인해 상수와 변수를 정의한 원래 범위가 더이상 존재하지 않더라도
 -> 바디 내에서 해당 상수와 변수의 값을 참조하고 수정할 수 있음
 
 */


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
     
        return runningTotal
    }
    return incrementer
}

// makeIncrementer의 반환타입 : () -> Int
// = 함수를 반환한다는 의미
// 반환하는 함수에는 파라미터가 없고, 호출될 때마다 Int값을 반환함

// incrementer() 함수를 단독으로 고려할 때, 비정상적으로 보임
// 함수에 파라미터가 없으며, 함수 바디 안에 runningTotal과 amount에 대한 참조를 캡처하여 사용
// 참조 캡처 : makeIncrementer 호출이 종료될 때 runningTotal과 amount가 사라지지 X
// incrementer 함수가 호출될 때,runningTotal을 사용할 수 있다


// makeIncrementer 수행 예시
var incrementByTen = makeIncrementer(forIncrement: 20)

incrementByTen() // 20

incrementByTen() // 40

incrementByTen() // 60
