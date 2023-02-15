/// 프로퍼티 감시자
/// Property Observer

import Swift

// 프로퍼티 감시자를 사용하면 프로퍼티의 값이 변경될 때 원하는 동작을 수행할 수 있습니다.

// MARK: - 정의

/*
struct MoneyAgain {
    // 프로퍼티 감시자 사용
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다.")
        }
        
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경되었습니다.")
        }
    }
    
    // 프로퍼티 감시자 사용
    var dollar: Double = 0 {
        // willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        
        // didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다.")
        }
    }
    
    // 연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
        
        // 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없습니다.
        /*
        willSet(newValue) {
            won(Value) -> newValue
        }
        
        didset(oldValue) {
            oldValue -> won(Value)
        {
        */
    }
}
*/



// MARK: - 사용

/*
var moneyInMyPocketAgain: MoneyAgain = MoneyAgain()

/// 환율이 1100.0에서 1150.0으로 변경될 예정입니다.
moneyInMyPocketAgain.currencyRate = 1150
/// 환율이 1100.0에서 1150.0으로 변경되었습니다

/// 0.0달러에서 10.0달러로 변경될 예정입니다.
moneyInMyPocketAgain.dollar = 10
/// 0.0달러에서 10.0달러로 변경되었습니다.

print(moneyInMyPocketAgain.won) /// 11500.0
*/



// 프로퍼티 감시자의 기능 - 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다.

/*
var c: Int = 100 {
    willSet {
        print("\(c)에서 \(newValue)로 변경될 예정입니다.")
    }
    
    didSet {
        print("\(oldValue)에서 \(c)로 변경되었습니다.")
    }
}

/// 100에서 200로 변경될 예정입니다.
c = 200
/// 100에서 200로 변경되었습니다.
*/



// MARK: - 실습내용

// 프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 때 원하는 동작을 수행할 수 있습니다.

// 스스로 타입을 구현하여 프로퍼티 감시자를 구현해 봅시다.
