/// 익스텐션

import Swift

// MARK: - 정의

/*
extension 확장할 타입 이름 {
    타입에 추가될 새로운 기능 구현
}
*/

/*
extension 확장할 타입 이름: 프로토콜1, 프로토콜2, 프로토콜3 ... {
    프로토콜 요구 사항 구현
}
*/



// MARK: - 익스텐션 구현

// 연산 프로퍼티 추가

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

// print(1.isEven) /// false
// print(2.isEven) /// true
// print(1.isOdd)  /// true
// print(2.isOdd)  /// false

var number: Int = 3
// print(number.isEven) /// false
// print(number.isOdd) /// true

number = 2
// print(number.isEven) /// true
// print(number.isOdd) /// false



// 위 코드의 익스텐션은 Int 타입에 두 개의 연산 프로퍼티를 추가한 것입니다. Int 타입의 인스턴스가 홀수인지 짝수인지 판별하여 Bool 타입으로 알려주는 연산 프로퍼티입니다. 익스텐션으로 Int 타입에 추가해준 연산 프로퍼티는 Int 타입의 어떤 인스턴스에도 사용이 가능합니다.
// 위의 코드처럼 인스턴스 연산 프로퍼티를 추가할 수도 있으며, static 키워드를 사용하여 타입 연산 프로퍼티도 추가할 수 있습니다.



// 메서드 추가

extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}
// print(3.multiply(by: 2)) /// 6
// print(4.multiply(by: 5)) /// 20

number = 3
// print(number.multiply(by: 2)) /// 6
// print(number.multiply(by: 3)) /// 9



// 위 코드의 익스텐션을 통해 Int 타입에 인스턴스 메서드인 multiply(by:) 메서드를 추가했습니다. 여러 기능을 여러 익스텐션 블록으로 나눠서 구현해도 전혀 문제가 없습니다. 관련된 기능별로 하나의 익스텐션 블록에 묶어주는 것도 좋습니다.



// 이니셜라이저 추가

extension String {
    init(int: Int) {
        self = "\(int)"
    }
    
    init(double: Double) {
        self = "\(double)"
    }
}

let stringFromInt: String = String(int: 100)
// print(stringFromInt) /// "100"

let stringFromDouble: String = String(double: 100.0)
// print(stringFromDouble) /// "100.0"


// 인스턴스를 초기화(이니셜라이즈)할 때 인스턴스 초기화에 필요한 다양한 데이터를 전달받을 수 있도록 여러 종류의 이니셜라이저를 만들 수 있습니다. 타입의 정의부에 이니셜라이저를 추가하지 않더라도 익스텐션을 통해 이니셜라이저를 추가할 수 있습니다.
// 하지만 익스텐션으로 클래스 타입에 편의 이니셜라이저는 추가할 수 있지만, 지정 이니셜라이저는 추가할 수 없습니다. 지정 이니셜라이저와 디이니셜라이저는 반드시 클래스 타입의 구현부에 위치해야 합니다. (값 타입은 상관없습니다.)



// MARK: - 실습내용

// 익스텐션을 활용하여 다양한 타입에 기능을 추가해 보세요!
