import UIKit

var countries = ["Canada", "Brazil", "Japan", "Ecuador", "Philippines"]
print(countries[0])

var countryCode: [String: Int] = [
  "Canada": 1,
  "USA": 1,
  "Brazil": 55,
  "Japan": 81,
  "Ecuador": 593,
  "Philippines": 63
]

// Int  : never nil
// Int? : "Int Optional"
// Optional -> it can be nil or some value
let code = countryCode["Ecuador"]!
print(code)
// Unwrapping Optionals
// 1. ! Force unwrap -> if nil, crash!
// 2. Safely unwrapping using if-let statement
if let japanCode = countryCode["Japan1"] {
  print(japanCode)
} else {
  print("It does not exist")
}

var check: [Int?] = [1, 2, 3, 4, 5, 6, nil, nil]
// Optional chaining
// check[6]?.advanced(by: 10)
if let first = check[0] {
  print(first)
}
