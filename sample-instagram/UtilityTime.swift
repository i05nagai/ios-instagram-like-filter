//
//  UtilityTime.swift
//  sample-instagram
//
//  Created by admin on 2017/12/13.
//  Copyright © 2017 i05nagai. All rights reserved.
//

import Foundation

func printTimeElapsedWhenRunningCode <T> (title: String, operation: @autoclosure () -> T) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed for \(title): \(timeElapsed) seconds")
}

func getStartTime() -> CFAbsoluteTime {
    return CFAbsoluteTimeGetCurrent()
}

func printElapsedTime(title: String, startTime: CFAbsoluteTime) {
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed for \(title): \(timeElapsed) seconds")
}
