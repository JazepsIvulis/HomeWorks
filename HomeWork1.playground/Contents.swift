import UIKit

/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/
let firstString = "I'm learning"
let secondString = "Swift"
print("\(firstString) \(secondString) !!!")

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge = 29

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears = myAge + 10

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed = Double(myAgeInTenYears) * Double(daysInYear)

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
var daysPassedSinceBirth = Double(myAge) * daysInYear
print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed approximately \(daysPassedSinceBirth) days.")

/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
let ac = 8.0
let cb = 6.0
let ab = sqrt(pow(ac, 2) + pow(cb, 2))
let triangleArea = (ac * cb) / 2
let trianglePerimeter = ac + cb + ab
print("Length of the triangle's hypotenuse is \(ab), triangle's area is \(triangleArea), triangle's perimneter is \(trianglePerimeter).")

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
let birthDate = DateComponents(calendar: .current, year: 1994, month: 3, day: 15).date!
let currentDate = Date()

let totalYearsFromBirth = Calendar.current.dateComponents([.year], from: birthDate, to: currentDate).year!
let totalMonthFromBirth = Calendar.current.dateComponents([.month], from: birthDate, to: currentDate).month!
let totalDaysFromBirth = Calendar.current.dateComponents([.day], from: birthDate, to: currentDate).day!

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
