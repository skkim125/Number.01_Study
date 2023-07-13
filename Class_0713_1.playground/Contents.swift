import UIKit

//class Person {
//    let name: String
//    init(name: String) {
//        self.name = name
//        print("\(name) is being initialized")
//    }
//    deinit {
//        print("\(name) is being deinitialized")
//    }
//}
//
//var reference1: Person?
//var reference2: Person?
//var reference3: Person?
//
//reference1 = Person(name: "John Appleseed")
//
//reference2 = reference1
//reference3 = reference1
//
//reference1 = nil
//reference2 = nil
//
//reference3 = nil

//reference1 = Person(name: "John Appleseed")


// class 와 struct의 차이점 : 클래스 선언시 클래스안에서 생성한 인스턴스를 초기화해서 직접 가지고 다님, 무거움

// struct는 자동으로 초기화값을 가지기 때문에 초기화+deinit 함수를 만들 필요 없음, 그냥 그대로 통째로 가져옴



//-----------------------------------------------------------------------
// 자강두천
// 그러나 클래스의 인스턴스가 강한 참조가 없는 지점에 도달하지 않는 코드를 작성할 수 있음
// 이는 두 클래스 인스턴스가 서로에 대한 강한 참조를 유지하여 각 인스턴스가 다른 인스턴스를 유지하는 경우 발생하는 것 => 강한 참조 사이클 (strong reference cycle)

//------해결방법--------
// 1)약한 참조
// 2)미소유 참조


// 약한 참조 : 참조하는 인스턴스를 강하게 유지하지 않는 참조이므로 ARC가 참조된 인스턴스를 처리하는 것을 중지하지 않습니다.

class Person {
    let name: String
    
    init(name: String)
    {
        self.name = name
    }
    
    weak var apartment: Apartment?//강한참조
    
    deinit
    {
        print("\(name) is being deinitialized")
        
    }
}

class Apartment {
    let unit: String
    
    init(unit: String)
    {
        self.unit = unit
        
    }
    
    weak var tenant: Person?//강한참조 -> weak로 약한참조 선언
    
    deinit
    {
        print("Apartment \(unit) is being deinitialized")
    }
}


var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john

john = nil
unit4A = nil

// 가비지 콜렉션일 때는 약한 참조를 사용하지 않아야함
