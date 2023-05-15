import UIKit


//Prefix

prefix operator <||
prefix func <|| (rhs:[Int]) -> [Int]{
    let result = rhs.map({$0 - 1})
    return result
}

let ages = [9, 25, 30, 42, 7, 18]
let lastYearAges = <||ages



//Postfix

postfix operator >||
postfix func >|| (lhs: Int) -> Int{
    var result = 1
    if lhs < 2 {
        return result
    }
    for i in 2...lhs {
        result *= i
    }

    return result
}

5 >||
6 >||
8 >||
9 >||
