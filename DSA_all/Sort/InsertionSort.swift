//
//  InsertionSort.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

func runInsertionSort(input: [Int] = [10,9,8,7,6,5,4,3,2,1]) -> [Int] {
    let n = input.count
    var array = input
    for i in 1..<n {
        let key = array[i]
        var j = i - 1
        // loop the subarray
        while j >= 0, array[j] > key {
            array[j+1] = array[j]
            j -= 1
        }
        // set the correct position for key
        array[j+1] = key
    }
    return array
}
