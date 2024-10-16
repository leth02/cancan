/*
https://leetcode.com/problems/find-median-from-data-stream/description/

This is a brute force approach.
For each insertion, use binary search to find the place to insert the number in a way that maintain sorted order of the array.
For each median lookup, simply return the middle element of the array as the array has always been sorted.
*/
class MedianFinder {
  var numbers = [Int]()

  func addNumber(_ number: Int) {
    var left = 0
    var right = numbers.count - 1

    while left <= right {
      let mid = (left + right) / 2

      if number < numbers[mid] {
        left = mid + 1
      } else {
        right = mid - 1
      }
    }

    numbers.insert(number, at: left)
  }

  func findMedian() -> Double {
    let numCount = numbers.count
    let mid = numCount / 2
    let midVal = Double(numbers[mid])
  
    return numCount % 2 == 0 ? Double((midVal + numbers[mid - 1]) / 2) : midVal
  }
  
}
