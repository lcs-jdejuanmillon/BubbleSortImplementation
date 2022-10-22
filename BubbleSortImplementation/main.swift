//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Jacobo de Juan Millon on 2022-10-20.

import Foundation

func waitForUserInput() {
    print("")
    print("Press return to continue...")
    // Waits for input from the user, then discards it
    var _ = readLine()
}

func populateSorted(size: Int) {
    for i in 1...size {
        dataSet.append(i)
    }
}

func populateReversed(size: Int) {
    for i in 1...size {
        dataSet.append(size - i)
    }
}

func populateRandomized(size: Int, min: Int, max: Int) {
    for _ in 1...size {
        dataSet.append(Int.random(in: min...max))
    }
}

func populateAlmostSorted(size: Int, passesRequired: Int) {
    for i in 1..<size - passesRequired {
        dataSet.append(i)
    }
    for i in 0...passesRequired {
        dataSet.append(size - i)
    }
}

// Create an empty list (array)
var dataSet: [Int] = []

// Populate the list
populateSorted(size: 10)

// Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

// Keep track of the start time (epoch)
// When this line of code runs, startTime contains the number of seconds since January 1, 1970
let startTime = Date().timeIntervalSince1970
print("Starting sort...")

// Loop through the entire array "n" times
// (however many times there are elements in the array)
for i in 0..<dataSet.count {
    
    // Keep track of whether a pair of numbers was swapped
    var swapped = false
    
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - i - 1 {
        
        // Compare left value to right value
        print("Comparison \(j + 1)... ", terminator: "")
        if dataSet[j] > dataSet[j + 1] {
            
            // Swap values (when left value is more than right value)
            let temporaryValue = dataSet[j] // Set aside the left value
            dataSet[j] = dataSet[j + 1] // Replace left with right
            dataSet[j + 1] = temporaryValue // Replace right with the temporary value
            print(" values were swapped.", terminator: "")
            
            // Note that a swap occured
            swapped = true
            
        }
        print("")
        
    }
    
    // When no swaps occured, stop the outer loop
    if !swapped {
        break
    }
    
    // Print the array after the pass
    print("Array after pass \(i + 1):")
    print(dataSet)
    waitForUserInput()
    
}

// Get end time (seconds since epoch)
let endTime = Date().timeIntervalSince1970
print("ended.")

// Get the elapsed time
let elapsedTime = endTime - startTime
print("Sort took \(elapsedTime) seconds.")

