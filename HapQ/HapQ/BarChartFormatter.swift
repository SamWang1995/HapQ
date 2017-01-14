//
//  BarChartFormatter.swift
//  HapQ
//
//  Created by Samuel Wang on 1/14/17.
//  Copyright © 2017 Samuel Wang. All rights reserved.
//

import UIKit
import Foundation
import Charts

@objc(BarChartFormatter)
public class BarChartFormatter: NSObject, IAxisValueFormatter{
    
    var days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    
    
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        
        return days[Int(value)]
    }
}
