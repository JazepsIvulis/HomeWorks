import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
var deposit: Double = 500_000, profit: Double = 0, totalProfit: Double = 0
let interestRate: Double = 0.0368, period = 5

for period in 1...period {
    profit = 0
    profit += deposit * interestRate
    deposit += profit
    totalProfit += profit
    print("Profit after year \(period) will be \(String(format: "%.2f", profit)) EUR. Total profit after \(period) years will be \(String(format: "%.2f", totalProfit)) EUR. Total deposit will be \(String(format: "%.2f", deposit)) EUR!")
}

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
let arrayOfInt = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var evenNumbers: [Int] = []

for number in arrayOfInt {
    if (number % 2) == 0 {
        evenNumbers += [number]
    }
}

print("My even numbers are: \(evenNumbers)\n")

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
let limit = 10

for shuffle in 1... {
    let randomNumber = Int.random(in: 1...6)
    print("After \(shuffle) shuffles, number is \(randomNumber)")
    if randomNumber == 5 {
        print("Number 5 will be after \(shuffle) shuffles\n")
        break
    } else if shuffle == limit {
        print("Unlucky! You have reached your shuffling limit for today. Try again tomorrow!\n")
        break
    }
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
var climb = 0, numberOfDays = 0, state = "day"

while climb < 10 {
    if state == "day" {
        climb += 2
        numberOfDays += 1
        state = "night"
    } else if state == "night" {
        climb -= 1
        state = "day"
    }
}

print("Bug will spend \(numberOfDays) days to reach top of the post")
