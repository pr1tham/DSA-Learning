//
//  BubbleSort.swift
//  DSA_all
//
//  Created by Preetham Bangera on 21/08/24.
//

import Foundation

func runBubbleSort(input: [Int] = [10,9,8,7,6,5,4,3,2,1]) -> [Int] {
    let n = input.count
    var array = input
    for i in 0..<n {
        for j in 0..<n-i-1 {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
            }
        }
    }
    return array
}
