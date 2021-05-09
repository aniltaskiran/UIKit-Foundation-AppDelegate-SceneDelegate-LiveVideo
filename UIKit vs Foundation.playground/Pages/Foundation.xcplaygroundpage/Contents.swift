/*:
 [Previous](@previous) | [Next](@next)
 ****

 Copyright (c) 2021 Anıl T.

 Official Apple documentation available at [Swift Language Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/)

 Anıl Taşkıran - [medium](https://aniltaskiran.medium.com/) | [@aniiltaskiran](http://twitter.com/aniiltaskiran)

 ****
 */

/*:
 # Foundation

 ### The Foundation framework is similar to the UIKit framework in that it defines general-purpose classes. The difference is that whereas UIKit limits itself to classes that implement the user interface, the Foundation framework stakes a claim on all the other stuff — the non–user-interface stuff — you need in your app.

 In practical terms, this means that the Foundation framework defines basic object behavior, memory management, notifications, internationalization, and localization.

 The Foundation framework also provides object wrappers or equivalents (for numeric values, strings, and collections) and utility classes (for accessing underlying system entities and services, such as ports, threads, and file systems as well as networking, and date and time management).
 */

/*:
 ![Foundation](foundation.png)
 ![Foundation Fundamentals](foundation-fundamentals.png)
 */


import Foundation

/*:
 ### class Bundle
 A representation of the code and resources stored in a bundle directory on disk.

 ### class JSONDecoder
 An object that decodes instances of a data type from JSON objects.
 */
struct User: Codable {
    let name: String
}

var user: User? {
    guard let url = Bundle.main.url(forResource: "user", withExtension: "json"),
          let data = try? Data(contentsOf: url) else {
        return nil
    }
    
    return try? JSONDecoder().decode(User.self, from: data)
}

print(user?.name ?? "Nil")
/*:
 ### class NumberFormatter
 A formatter that converts between numeric values and their textual representations.
 */
let formatter = NumberFormatter()
formatter.numberStyle = .scientific
formatter.string(for: 0.00000324)
/*:
 ### struct Data
 A byte buffer in memory.
 */
let data = user?.name.data(using: .utf8)

/*:
 ### struct URL
 A value that identifies the location of a resource, such as an item on a remote server or the path to a local file.
 ### struct URLComponents
 A structure that parses URLs into and constructs URLs from their constituent parts.
 ### struct URLQueryItem
 A single name-value pair from the query portion of a URL.
 */
let url = URL(string: "https://medium.com/search?q=aniltaskiran")
url?.query
url?.absoluteString
url?.path
url?.scheme

let combinedUrl = URL(string: "https://" +
                        "medium.com" +
                        "/search" +
                        "?q=aniltaskiran")

let components = URLComponents(string: "https://medium.com/search?q=aniltaskiran")
components?.path
components?.scheme
components?.host
components?.query
components?.queryItems

var componentUrl = URLComponents()
componentUrl.scheme = "https"
componentUrl.host = "medium.com"
componentUrl.path = "/search"
componentUrl.queryItems = [
    URLQueryItem(name: "q", value: "aniltaskiran"),
    URLQueryItem(name: "minAge", value: "12")
]

componentUrl.url?.absoluteString


/*:
 ### struct UUID
 A universally unique value that can be used to identify types, interfaces, and other items.
 */

let id = UUID().uuidString

/*:

 ### struct CharacterSet
 A set of Unicode character values for use in search operations.
 typealias UnicodeScalar
 */

extension String {
    var isValidPassword: Bool {
        let numbers = CharacterSet.decimalDigits
        let rangeOfInvalidCharacters = self.rangeOfCharacter(from: numbers.inverted)
        return rangeOfInvalidCharacters == nil
    }

    var fancyIsValidPassword: Bool {
        rangeOfCharacter(from: .decimalDigits.inverted) == nil
    }
}

let string1 = "qwerty12345".isValidPassword
let string2 = "qwerty".isValidPassword
let string3 = "12345".isValidPassword

/*:
 ### struct Locale
 Information about linguistic, cultural, and technological conventions for use in formatting data for presentation.
 ### class NSOrthography
 A description of the linguistic content of natural language text, typically used for spelling and grammar checking.
 func NSLocalizedString(String, tableName: String?, bundle: Bundle, value: String, comment: String) -> String
 Returns a localized string from a table that Xcode generates for you when exporting localizations.
 */

/*:
 ### struct IndexPath
 A list of indexes that together represent the path to a specific location in a tree of nested arrays.
 ### struct IndexSet
 A collection of unique integer values that represent the indexes of elements in another collection.
 */
let indexPath = IndexPath(row: 0, section: 1)

/*:
 ### struct Date
 A specific point in time, independent of any calendar or time zone.
 ### struct DateInterval
 The span of time between a specific start date and end date.
 typealias TimeInterval
 A number of seconds.
 Calendrical Calculations
 ### struct DateComponents
 A date or time specified in terms of units (such as year, month, day, hour, and minute) to be evaluated in a calendar system and time zone.
 ### struct Calendar
 A definition of the relationships between calendar units (such as eras, years, and weekdays) and absolute points in time, providing features for calculation and comparison of dates.
 ### struct TimeZone
 Information about standard time conventions associated with a specific geopolitical region.
 Date Formatting
 ### class DateFormatter
 A formatter that converts between dates and their textual representations.
 ### class DateComponentsFormatter
 A formatter that creates string representations of quantities of time.
 ### class DateIntervalFormatter
 A formatter that creates string representations of time intervals.
 ### class ISO8601DateFormatter
 A formatter that converts between dates and their ISO 8601 string representations.
 */

Date()

/*:
 ### struct Notification
 A container for information broadcast through a notification center to all registered observers.
 ### class NotificationCenter
 A notification dispatch mechanism that enables the broadcast of information to registered observers.
 ### class NotificationQueue
 A notification center buffer.
 */
let center = NotificationCenter()

/*:
 ****
 [Previous](@previous) | [Next](@next)
 */

