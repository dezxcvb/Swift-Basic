/// 고급 데이터 타입
/// Any, AnyObject, nil

import Swift

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스의 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */



// MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

// let someDouble: Double = someAny



// MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

// someAnyObject = 123.12

// MARK: - nil (NULL, Null, null)

// someAny = nil
// someAnyObject = nil



// MARK: - 실습 내용

// 여러가지 시도를 스스로 해봅시다.
