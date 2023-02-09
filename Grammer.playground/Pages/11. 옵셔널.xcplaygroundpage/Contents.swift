/// 옵셔널
/// Optional

import Swift

// MARK: - 옵셔널
// Optional

var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// nil 할당 가능
optionalValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
// optionalValue = optionalValue + 1 // 오류 발생



// MARK: - 암시적 추출 옵셔널
/// Implicitly Unwrapped Optional

var implicitlyUnwrappedOptionalValue: Int! = 100

switch implicitlyUnwrappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용 가능
implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1

// nil 할당 가능
implicitlyUnwrappedOptionalValue = nil

// implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1 // 오류 발생



// MARK: - 실습 내용

// 옵셔널은 한 번에 이해하기 힘듭니다. 여러 시도를 해보면서 조금씩 생각해봅시다.
