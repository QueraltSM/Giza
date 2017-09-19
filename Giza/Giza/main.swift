//
//  main.swift
//  Giza
//
//  Created by Queralt Sosa Mompel on 20/9/17.
//  Copyright © 2017 Queralt Sosa Mompel. All rights reserved.
//

import Foundation

func input() -> NSString {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    return NSString(data: inputData, encoding:String.Encoding.utf8.rawValue)!
}

func printResult( _ depth:Int ) -> () {
    for x in 0 ..< depth {
        for y in 0 ..< depth * 2 - 1 {
            if y >= depth - 1 - x && y <= depth - 1 + x {
                print( "*", terminator:"" )
            } else {
                print( " ", terminator:"" )
            }
        }
        print()
    }
}


print("Introduce a number:")
var number = input()
print(printResult(number.integerValue))
