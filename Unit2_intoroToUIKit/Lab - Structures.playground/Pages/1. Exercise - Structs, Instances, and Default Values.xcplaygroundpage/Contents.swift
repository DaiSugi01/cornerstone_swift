/*:
 ## Exercise - Structs, Instances, and Default Values
 
 Imagine you are creating an app that will monitor location. Create a `GPS` struct with two variable properties, `latitude` and `longitude`, both with default values of 0.0.
 */
struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}



/*:
 Create a variable instance of `GPS` called `somePlace`. It should be initialized without supplying any arguments. Print out the latitude and longitude of `somePlace`, which should be 0.0 for both.
 */
let somePlace = GPS()
print("latitude: \(somePlace.latitude), longitude: \(somePlace.longitude)")


/*:
 Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
 */
struct Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
    var price: Double = 0.0
}

/*:
 Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
 */
var favoriteBook = Book()

favoriteBook.title = "Harry potter"
favoriteBook.author = "Daiki Sugihara"
favoriteBook.pages = 1000
favoriteBook.price = 100.5

let str = """
My favorite book is:
    title: \(favoriteBook.title)
    author: \(favoriteBook.author)
    pages: \(favoriteBook.pages)
    price: \(favoriteBook.price)
"""
print(str)

//: page 1 of 10  |  [Next: App Exercise - Workout Tracking](@next)
