/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var anyList: [Any] = [1.2, 3.54, 4, "Str", false]
print(anyList)

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for ele in anyList {
    print("The integer ha a value of \(ele)")
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var anyDic: [String: Any] = ["d": 1.1, "i": 100, "s": "300", "b": false]
for (k, v) in anyDic {
    print("Item: \(k), Value: \(v)")
}
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0
for (_, v) in anyDic {
    if let item  = v as? Double {
        total += item
    } else if let item = v as? Int {
        total += Double(item)
    } else if let _ = v as? String {
        total += 1
    } else if let item = v as? Bool {
        total += item ? 2.0 : -3.0
    }
}

print(total)

/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0
for (_, v) in anyDic {
    if let item = v as? Double {
        total2 += item
    } else if let item = v as? Int {
        total2 += Double(item)
    } else if let item = v as? String {
        if let num = Double(item) {
            total2 += num
        }
    }
}
print(total2)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
