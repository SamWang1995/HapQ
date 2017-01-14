//
//  HomeViewController.swift
//  HapQ
//
//  Created by Samuel Wang on 1/13/17.
//  Copyright © 2017 Samuel Wang. All rights reserved.
//

import UIKit
import Charts

class HomeViewController: UIViewController {
    
    
    @IBAction func addMood(_ sender: UIButton) {
        performSegue(withIdentifier: "toMood", sender: self)
    }
    @IBOutlet weak var mood: UIButton!
    
    @IBOutlet weak var barChart: BarChartView!
    
    
    
    
    var days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
    let happinessLevel = [5.0, 4.0, 3.0, 4.0, 2.0, 4.0, 5.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(File.shared.moodStr == "ecstatic"){
            mood.setImage(UIImage(named: "5.png"), for: .normal)
        }
        else if(File.shared.moodStr == "happy"){
            mood.setImage(UIImage(named: "1.png"), for: .normal)
        }
        else if(File.shared.moodStr == "neutral"){
            mood.setImage(UIImage(named: "4.png"), for: .normal)
        }
        else if(File.shared.moodStr == "sad"){
            mood.setImage(UIImage(named: "3.png"), for: .normal)
        }
        else if(File.shared.moodStr == "terrible"){
            mood.setImage(UIImage(named: "2.png"), for: .normal)
        }
        else{
            mood.setImage(UIImage(named: "dotted-circle.png"), for: .normal)
        }
        setChart(dataPoints: days, values: happinessLevel)
        // Do any additional setup after loading the view.
    }
    
    
    func setChart(dataPoints: [String], values: [Double]) {
        let formato:BarChartFormatter = BarChartFormatter()
        let xaxis:XAxis = XAxis()
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: Double(i), yValues: [values[i]])
            formato.stringForValue(Double(i), axis: xaxis)
            dataEntries.append(dataEntry)
        }
        xaxis.valueFormatter = formato
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Happiness Level")
        chartDataSet.valueTextColor = UIColor.blue
        let chartData = BarChartData(dataSet: chartDataSet)
        barChart.descriptionText = ""
        barChart.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        barChart.data = chartData
        barChart.drawGridBackgroundEnabled = false
        barChart.drawValueAboveBarEnabled = false
        barChart.drawBarShadowEnabled = false
        barChart.drawBordersEnabled = false
        barChart.xAxis.drawGridLinesEnabled = false
        barChart.xAxis.drawAxisLineEnabled = false
        barChart.leftAxis.drawGridLinesEnabled = false
        barChart.leftAxis.drawAxisLineEnabled = false
        barChart.rightAxis.drawAxisLineEnabled = false
        barChart.rightAxis.drawGridLinesEnabled = false
        barChart.rightAxis.drawLabelsEnabled = false
        barChart.drawMarkers = false
        chartDataSet.colors = ChartColorTemplates.vordiplom()
        chartDataSet.drawValuesEnabled = false

        barChart.xAxis.valueFormatter = xaxis.valueFormatter
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
