import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var firstNumber: Float = 3.14
var secondNumber: Float = 42.0
var sumOfTwo: Double = Double(firstNumber) + Double(secondNumber)
print("Sum of \(firstNumber) and \(secondNumber) is \(sumOfTwo)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne = 11
var numberTwo = 4
let division = numberOne / numberTwo
let remainder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(division), the remainder is \(remainder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let qty = 7
var price = 1000

if qty >= 1 && qty < 5 {
    price = 1000
}else if qty >= 5 && qty < 10 {
    price = 900
}else if qty >= 10 {
    price = 850
}else{
    print("Choose the quantity!")
}

let totalSum = qty * price
print("\(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) EUR")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge: String? = "33a"
let convertToInt = Int(userInputAge!)
// Executing print statement below causes "Fatal error: Unexpectedly found nil while unwrapping an Optional value":
//print(convertToInt!)

if convertToInt == nil {
    print("Age \(String(describing: userInputAge)) can NOT be converted to Int")
}else{
    print("Age \(String(describing: userInputAge)) can be converted to Int and Int value of age is \(convertToInt!)")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let birthDate = DateComponents(calendar: .current, year: 1994, month: 3, day: 15)
let currentDate = Date()

let totalYearsFromBirth = Calendar.current.dateComponents([.year], from: birthDate.date!, to: currentDate).year!
let totalMonthFromBirth = Calendar.current.dateComponents([.month], from: birthDate.date!, to: currentDate).month!
let totalDaysFromBirth = Calendar.current.dateComponents([.day], from: birthDate.date!, to: currentDate).day!

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let monthOfBirth = birthDate.month ?? 0
var quarter = ""

switch monthOfBirth {
case 1...3:
    quarter = "1st"
case 4...6:
    quarter = "2nd"
case 7...9:
    quarter = "3rd"
case 10...12:
    quarter = "4th"
default:
    break
}

print("I was born in the \(quarter) quarter of the year.")
