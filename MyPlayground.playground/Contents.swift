import UIKit

let constant = 10
var y: Int = 10
var x: Int = y + constant

var z: String = String(y)
var number: Double = 10.55

var greeting = "Hello "
var name = "Simon"
var message = (greeting + name).uppercased()
var message2 = "Hello \(greeting), \(name)"

var timeYouWakeup = 6
if(timeYouWakeup == 6) {
    print("Cook yourself a breakfast!")
} else {
    print("Go out for breakfast")
}

var bonus = 5000
switch bonus {
case 10000...:
    print("I will travel to Paris and London.")
case 5000...9999:
    print("I will travel to Tokyo.")
case 1000...4999:
    print("I will travel to Bangkok.")
default:
    print("Just stay home.")
}

var bookCollection = ["C# book", "Java book", "Your move"]
bookCollection.append("Hello book")

//for index in 0...(bookCollection.count - 1) {
//    print(bookCollection[index])
//}

//for book in bookCollection {
//    print(book)
//}

var bookCollectionDict = ["1328683788": "C# book", "0307463745": "Java book"]
print("")
bookCollectionDict["1328683788"]

for (key, value) in bookCollectionDict {
    print("ISBN \(key)")
    print("Title \(value)")
}

var emojiDict = ["👻":"Ghost",
                 "😀":"Smile"]

var wordToLookup = "👻"
var meaning = emojiDict[wordToLookup]
print(meaning) // Optional("Ghost")

var meaning2: String? = "This String can be null"
print(meaning2)

var jobTitle: String? = "Programmer"
if jobTitle != nil {
    var message3 = "Hello, " + jobTitle!
}


if let jobTitleWithValue = jobTitle {
    print(jobTitleWithValue)
}

if let meaning = meaning {
    // Note: Even though the names are the same, there are actually two variables in the code above. jobTitle in black is the optional variable, while jobTitle in blue is the temporary constant to be assigned with the optional value.
    print(meaning)
}

let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
containerView.backgroundColor = UIColor.orange

let emojiLabel = UILabel(frame: CGRect(x: 95, y: 20, width: 150, height: 150))
emojiLabel.text = wordToLookup
emojiLabel.font = UIFont.systemFont(ofSize: 100.0)
containerView.addSubview(emojiLabel)

let meaningLabel = UILabel(frame: CGRect(x: 110, y: 100, width: 150, height: 150))
meaningLabel.text = meaning
meaningLabel.font = UIFont.systemFont(ofSize: 30.0)
meaningLabel.textColor = UIColor.white

containerView.addSubview(meaningLabel)
