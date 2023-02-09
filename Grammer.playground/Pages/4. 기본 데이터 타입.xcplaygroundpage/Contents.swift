/// 기본 데이터 타입

import UIKit

// Swift의 기본 데이터 타입
// Bool, Int, UInt, Float, Double, Character, String

// Bool
var someBool: Bool = true
someBool = false
// some Bool = 0

// Int
var someInt: Int = -100
// someInt = 100.1

// UInt
var someUInt: UInt = 100
// someUInt = -100
// someUInt = someInt

// Float
var someFloat: Float = 3.14
someFloat = 3

// Double
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat

// Character
var someCharacter: Character = "🇰🇷"
someCharacter = "가"
// someCharacter = "하하하"
// print(someCharacter)

// String
var someString: String = "하하하 "
someString = someString + "웃으면 복이와요"
// print(someString)

// someString = someCharacter

/*
someString = """
여러줄 문자열을
사용할 수 있습니다.
첫 줄에 겹따옴표 세 개,
마지막 줄에 겹따옴표 세 개를
사용하면 됩니다.
"""
*/

// someString = """겹따옴표 세 개인 줄(첫줄, 끝줄)에서 줄 바꿈을 하지 않으면 오류가 발생합니다.""" // 오류 발생



// MARK: - 실습 내용

// 생각해보기

// 다음 코드에서 integer, floatingPoint, apple 상수는 각각 어떤 타입이 될까요? 상상해보고 확인해보세요~!

let integer = 100
let floatingPoint = 12.34
let apple = "A"

// 힌트 : type(of:)

type(of: integer)
type(of: floatingPoint)
type(of: apple)
