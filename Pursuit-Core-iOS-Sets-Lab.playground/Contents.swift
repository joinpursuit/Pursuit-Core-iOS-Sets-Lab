import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()

// Your code here

numbersWithNoDuplicates = Set(numbers).sorted()

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

// Your code here

var scoreCounts = [Int:Int]()
var x = 0

for score in scores.sorted() {
    scoreCounts[score] = (scoreCounts[score] ?? 0) + 1
}
for (key,value) in scoreCounts {
    if value == 1 {
        scoresThatAppearOnce.append(key)
    }
}
scoresThatAppearOnce = scoresThatAppearOnce.sorted()

assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []

// Your code here

arrThree = Array(Set(arrOne).union(Set(arrTwo))).sorted()

assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

var arrSix: [Int] = []

// Your code here

arrSix = Array(Set(arrFour).intersection(Set(arrFive))).sorted()

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

var allNumsWithNoDuplicates: [Int] = []

// Your code here

var numsOneTwo = Set(numsOne).union(Set(numsTwo))
var numsThreeFour = Set(numsThree).union(Set(numsFour))
allNumsWithNoDuplicates = Array(Set(numsOneTwo).union(numsThreeFour)).sorted()
assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

// Your code here
//var strArray = [strOne, strTwo, strThree]
//for string in strArray {
//    for char in string where char != " " && char != "," {
//        print(char)
//    }
//    print()
//}
let alphabet = "abcdefghijklmnopqrstuvwxyz"
let alphabetSet = Set(alphabet)
var strCheck = strOne
var strArray = [Character]()
for char in strCheck where char != " " && char != ","  {
    let character = char.lowercased()
    strArray.append(Character(character))
}
if Set(strArray).sorted() == alphabetSet.sorted() {
    strOneIsPangram = true
}

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")

strCheck = strTwo
strArray = []
for char in strCheck where char != " " && char != ","  {
    let character = char.lowercased()
    strArray.append(Character(character))
}
if Set(strArray).sorted() == alphabetSet.sorted() {
    strTwoIsPangram = true
}

assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")

strCheck = strThree
strArray = []
for char in strCheck where char != " " && char != ","  {
    let character = char.lowercased()
    strArray.append(Character(character))
}
if Set(strArray).sorted() == alphabetSet.sorted() {
    strThreeIsPangram = true
}
print(strThreeIsPangram)

assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")

//need to go back to this question when I learn functions.







