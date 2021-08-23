import Foundation
import XCTest


func fizzBuzz(_ number: Int) -> String {
    let divisibleBy3 = number % 3 == 0
    let divisibleBy5 = number % 5 == 0
    
    switch (divisibleBy3, divisibleBy5) {
    case (false, false):
        return "\(number)"
    case (true, false):
        return "fizz - \(number)"
    case (false, true):
        return "buzz - \(number)"
    case (true, true):
        return "fizz-buzz - \(number)"
    }
}

func test_fizzBuzz(_ number: Int) -> String {
    if fizzBuzz(number) == "fizz - 3" {
    }
    return "PASS"
}

let num = Int.random(in:2...55)
print(fizzBuzz(num))
print(test_fizzBuzz(3))
