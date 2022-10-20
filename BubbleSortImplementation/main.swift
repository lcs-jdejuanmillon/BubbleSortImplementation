//
//  main.swift
//  BubbleSortImplementation
//
//  Created by Jacobo de Juan Millon on 2022-10-20.
//

import Foundation

func waitForUserInput() {
    print("")
    print("Press return to continue...")
    // Waits for input from the user, then discards it
    var _ = readLine()
}

// Create an empty list (array)
var dataSet: [Int] = []

// Populate the list
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

// Print the list
print("Unsorted:")
print(dataSet)
waitForUserInput()

// Loop through the entire array "n" times
// (however many times there are elements in the array)
for i in 0..<dataSet.count {
    // One pass through the array to float the highest number to the end
    for j in 0..<dataSet.count - 1 {
        
        // Compare left value to right value
        if dataSet[j] > dataSet[j + 1] {
            // Swap values (when left value is more than right value)
            let temporaryValue = dataSet[j] // Set aside the left value
            dataSet[j] = dataSet[j + 1]
            dataSet[j + 1] = temporaryValue
        }
    }
    // Print the array after the pass
    print("Array after pass:")
    print(dataSet)
    waitForUserInput()
}

