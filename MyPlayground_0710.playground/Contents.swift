import UIKit

//---------------------------------------------------------


// 진수에 따른 정수 표현 방법 예제
let binaryInteger: Int = 0b11100    //2진수로 10진수 28 표현
let octalInteger: Int = 0o34        //8진수로 10진수 28 표현
let hexadceimlInteger: Int = 0x1c   //16진수로 10진수 28 표현

print(binaryInteger)
print(octalInteger)
print(hexadceimlInteger)


//---------------------------------------------------------


// 문자열 결합 예제
let hello: String = "Hello"
let kim: String = "kim"

var hiKim: String = hello + " " + kim + "!"

print(hiKim)


hiKim = hello
hiKim += " "
hiKim += kim
hiKim += "!"

print(hiKim)


//---------------------------------------------------------


// 문자열 비교 예제
var isSameString: Bool = false


isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

// hasPrefix 비교 (앞에서부터 비교)
var hasPrefix: Bool = false

hasPrefix = hello.hasPrefix("He")
print(hasPrefix)

hasPrefix = hello.hasPrefix("he")
print(hasPrefix)

hasPrefix = hello.hasPrefix("HE")
print(hasPrefix)

hasPrefix = hello.hasPrefix("llo")
print(hasPrefix)

// hasSuffix 비교 (뒤에서부터 비교)
var hasSuffix: Bool = false

hasSuffix = hello.hasSuffix("llo")
print(hasSuffix)


//---------------------------------------------------------


// willSet 과 didSet
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) { // 값이 저장되기 직전 호출
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet { // 새로운 값이 저장되자마자 호출
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 500
stepCounter.totalSteps = 550
stepCounter.totalSteps = 747


//---------------------------------------------------------


// 제너릭 함수 예제
func mergeInfo<T, U>(_ infoOne: T, _ infoTwo: U) -> String {
    return "\(infoOne) : \(infoTwo)"
}

print(mergeInfo("UK", 89))
print(mergeInfo("CHina", 34))
print(mergeInfo("Mexico", 73.2))
print(mergeInfo(184, 840.895))


//---------------------------------------------------------


// String 배열 만드는 여러가지 방법
var names1: [String] = ["Kim", "SeGuen"]

var names2 = [String]()
var names3: [String] = .init()

var names4: Array<String> = []
var names5 = Array<String>()
var names6: Array<String> = .init()

print(names1)


//---------------------------------------------------------


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 20
var anotherInt = 381

swapTwoInts(&someInt, &anotherInt)

print(someInt)
print(anotherInt)


//---------------------------------------------------------


// 정렬 메서드 sorted
let names: [String] = [
    "살라", "알리송", "반다이크", "누녜스", "헨더슨",
    "파비뉴", "아놀드", "로버트슨", "티아고", "학포"]

// 배열의 .sorted() 함수는 오름차순으로 새 배열을 만들어 반환한다
var sortedNames: [String] = names.sorted()

// 한번에 뒤집기로 내림차순 가능
sortedNames = sortedNames.reversed()

// 다시 처음부터 우리 손으로 내림차순을 만들어보자
// 1. 함수를 만들어서
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
sortedNames = names.sorted(by: backward)

// 2. 클로저 표현식을 사용해서 in-line으로...

sortedNames = names.sorted(by: { (s1: String, s2: String) -> Bool  in
    return s1 > s2
})

sortedNames = names.sorted(by: { (s1: String, s2: String) -> Bool  in return s1 > s2 })

sortedNames = names.sorted(by: { s1, s2 in return s1 > s2 })

sortedNames = names.sorted(by: { s1, s2 in s1 > s2 })

sortedNames = names.sorted(by: { $0 > $1 })

sortedNames = names.sorted(by: >)

print(sortedNames)


//---------------------------------------------------------


//고차함수 reduce(클로저)
let numberss = [1,2,3,4,5]
let sum = numberss.reduce(3) { (result, number) in
    return result + number
}

