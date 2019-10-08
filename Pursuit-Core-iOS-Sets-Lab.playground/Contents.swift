import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()
var numberSet: Set<Int> = []
var numTuple: (Bool,Int)

for num in numbers{
    numTuple = numberSet.insert(num)
    if(numTuple.0){
        numbersWithNoDuplicates.append(numTuple.1)
    }
}

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

var scoreSet: Set<Int> = []
var scoresThatAppearTwice: Set<Int> = []
var testTuple: (Bool,Int)

for score in scores{
    testTuple = scoreSet.insert(score)
    if(!testTuple.0){
        scoresThatAppearTwice.insert(testTuple.1)
    }
}

for score in scores{
    if !scoresThatAppearTwice.contains(score){
        scoresThatAppearOnce.append(score)
    }
}

assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []

var setOne: Set<Int> = Set(arrOne)
var setTwo: Set<Int> = Set(arrTwo)
var setThree = setOne.union(setTwo)

arrThree = Array(setThree)
arrThree = arrThree.sorted()

assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]

var arrSix: [Int] = []

var setFour: Set<Int> = Set(arrFour)
var setFive: Set<Int> = Set(arrFive)
var setSix = setFour.intersection(setFive)

arrSix = Array(setSix)
arrSix = arrSix.sorted()

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

var allNumsWithNoDuplicates: [Int] = []

var setNumOne: Set<Int> = Set(numsOne)
var setNumTwo: Set<Int> = Set(numsTwo)
var setNumThree: Set<Int> = setNumOne.union(numsTwo)
setNumOne = setNumThree.union(numsThree)
setNumTwo = setNumOne.union(numsFour)
allNumsWithNoDuplicates = Array(setNumTwo)
allNumsWithNoDuplicates = allNumsWithNoDuplicates.sorted()

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

var panSet: Set<Character> = []
var panCheckSet: Set<Character> = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
var panTuple: (Bool,Character)

for str in strOne{
    panSet.insert(Character(str.lowercased()))
}

strOneIsPangram = true
strOneIsPangram = panCheckSet.isSubset(of: panSet)
panSet = []

for str in strTwo{
    panSet.insert(Character(str.lowercased()))
}

strTwoIsPangram = true
strTwoIsPangram = panCheckSet.isSubset(of: panSet)
panSet = []

for str in strThree{
    panSet.insert(Character(str.lowercased()))
}

strThreeIsPangram = true
strThreeIsPangram = panCheckSet.isSubset(of: panSet)
panSet = []

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")









