import UIKit


//arrays
var scores: [Int] = [10, 12, 9]
var singers = ["Taylor", "Adele", "Justin"]
var averages = [98.5, 97.1, 99.9]
var readings: [Bool] = [false, false, true, false]

//sets
// içindeki veriler tekrar ediyorsa teke düşürüyor ve
// içindeki veriler rastgele gösteriliyor
var scores2 = Set([9, 10])
var averageHeights = Set([1.71, 1.72, 1.73])
var names = Set(["Sean", "Paul"])
var colors = Set(["Red", "Green", "Red"]) //Sets must contain unique items, so the second "Red" will be discarded.
var ratings = Set([1, 1, 1, 2, 2, 2]) //the second and subsequent instances of 1 and 2 will be discarded.
var readings2 = Set([true, false, true, true]) //The second and subsequent instances of true will be discarded.

//tuples
    //Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:
    //You can’t add or remove items from a tuple; they are fixed in size.
    //You can’t change the type of items in a tuple; they always have the same types they were created with.
    //You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
    //Tuples are created by placing multiple items into parentheses, like this:

var name = (first: "Taylor", last: "Swift")
name.first
name.1

//dictionaries
    //Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
    //
    //The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:
    //Note: When using type annotations, dictionaries are written in brackets with a colon between your identifier and value types. For example, [String: Double] and [String: String].
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream.first
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"] // sonuç nil geliyor
favoriteIceCream["Charlotte", default: "Unknown"] //sonuç nil çıkmasın diye



//Creating empt collections
var teams = [String: String]() // boş dictionar oluşturdu
teams["Paul"] = "Red"

var results = [Int]() // boş array oluşturdu

var words = Set<String>()
var numbers = Set<Int>()

var scores3 = Dictionary<String, Int>()
scores3["bir"] = 1
scores3
var results3 = Array<Int>()


//enum
//let result = "failure"
//let result2 = "failed"
//let result3 = "fail"
//This stops you from accidentally using different strings each time.
enum Result {
    case success
    case failure
}
let result4 = Result.failure

//enum detay belirtme

//enum Activity {
//    case bored
//    case running
//    case talking
//    case singing
//}
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")


enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 2)

