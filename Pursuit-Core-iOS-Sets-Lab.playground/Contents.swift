import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()

// Your code here

numbersWithNoDuplicates = Array(Set(numbers)).sorted()
//print(numbersWithNoDuplicates)

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

// Your code here
//var maxFreqInt = 0
var frequencyDict: [Int: Int] = [:]

for key in scores {
    frequencyDict[key] = (frequencyDict[key] ?? 0) + 1
}

for (key, _) in frequencyDict {
    if frequencyDict[key] == 1{
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

var frequencyDictionary:[Int:Int] = [:]
var allElements = numsOne + numsTwo + numsThree + numsFour

allNumsWithNoDuplicates = Array(Set(allElements))
allNumsWithNoDuplicates = allNumsWithNoDuplicates.sorted()
//print(allNumsWithNoDuplicates)

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

//[["strOne": 0 ],["strTwo":0]]


// Your code here
var frequencyDictChar1: [Character:Int] = [:]
var frequencyDictChar2: [Character:Int] = [:]
var frequencyDictChar3: [Character:Int] = [:]

var alphabet = "abcdefghijklmnopqrstuvwxyz"
var alphabetSet = Set(alphabet).sorted()

var str1:Set<Character> = []


var str2:Set<Character> = []
var str3:Set<Character> = []

//strOneIsPangram
for char in strOne.lowercased() where char != " " && char != ","{
    frequencyDictChar1[char] = (frequencyDictChar1[char] ?? 0) + 1
}

for (key, _) in frequencyDictChar1 {
    if (frequencyDictChar1[key] ?? 0) >= 1 {
//        strOneIsPangram = true
        str1.insert(key)
    }
}
var str1Sorted = str1.sorted()
//print(str1Sorted)
//print(alphabetSet)

if str1Sorted == alphabetSet {
    strOneIsPangram = true
} else {
    strTwoIsPangram = false
}
//assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")

//strTwoIsPangram
for char in strTwo.lowercased() where char != " " && char != ","{
    frequencyDictChar2[char] = (frequencyDictChar2[char] ?? 0) + 1
}

for (key, _) in frequencyDictChar2 {
    if (frequencyDictChar2[key] ?? 0) >= 1 {
//        strTwoIsPangram = true
        str2.insert(key)
    }
}
var str2Sorted = str2.sorted()
//print(str2Sorted)
//print(alphabetSet)

if str2Sorted == alphabetSet {
    strTwoIsPangram = true
} else {
    strTwoIsPangram = false
}

assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")

//strThreeIsPangram
for char in strThree.lowercased() where char != " " && char != ","{
    frequencyDictChar3[char] = (frequencyDictChar3[char] ?? 0) + 1
}

for (key, _) in frequencyDictChar3 {
    if (frequencyDictChar3[key] ?? 0) >= 1 {
//        strThreeIsPangram = true
        str3.insert(key)
    }
}
var str3Sorted = str3.sorted()
//print(str3Sorted)
//print(alphabetSet)

if str3Sorted == alphabetSet {
    strThreeIsPangram = true
} else {
    strThreeIsPangram = false
}

assert(strThreeIsPangram == true, "Was expecting true, but got \(strThreeIsPangram)")

