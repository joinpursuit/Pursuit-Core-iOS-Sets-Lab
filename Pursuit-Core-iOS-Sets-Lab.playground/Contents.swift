import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]
var numbersWithNoDuplicates = [Int]()
var numFilter: Set<Int> = []

for num in numbers {
    numFilter.insert(num)
}

for num in numFilter.sorted() {
    numbersWithNoDuplicates.append(num)
}

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]
var scoresThatAppearOnce = [Int]()
var scoreFilter: Set<Int> = []
var removedNum:Set<Int> = []

for num in scores {
    if scoreFilter.contains(num) {
        scoreFilter.remove(num)
        removedNum.insert(num)
    } else if removedNum.contains(num) {
        continue
    } else {
        scoreFilter.insert(num)
    }
    print("scoreFilter\(scoreFilter)")
    print("removedNum\(removedNum)")
    print()
}

for num in scores where scoreFilter.contains(num) {
    scoresThatAppearOnce.append(num)
}

//assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]
let setOne = Set(arrOne)
let setTwo = Set(arrTwo)

var arrThree: [Int] = setOne.union(setTwo).sorted()

assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]
let setFour = Set(arrFour)
let setFive = Set(arrFive)

var arrSix: [Int] = setFour.intersection(setFive).sorted()

assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]
let nums1 = Set(numsOne)
let nums2 = Set(numsTwo)
let nums3 = Set(numsThree)
let nums4 = Set(numsFour)
let nums5 = nums1.union(nums2)
let nums6 = nums3.union(nums4)

var allNumsWithNoDuplicates: [Int] = nums5.union(nums6).sorted()

assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"
let isPangram = Set("abcdefghijklmnopqrstuvwxyz ")
let str1 = Set(strOne.lowercased())
let str2 = Set(strTwo.lowercased())
let str3 = Set(strThree.lowercased())



var strOneIsPangram: Bool = isPangram == str1
var strTwoIsPangram: Bool = isPangram == str2
var strThreeIsPangram: Bool = isPangram == str3

assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
assert(strThreeIsPangram == false, "Was expecting false, but got \(strThreeIsPangram)")









