//
//  ContentView.swift
//  WeConvert
//
//  Created by Lorenzo Pesci on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var measurement = ""
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    
    let unitOptions = [UnitLength.millimeters,
                       UnitLength.centimeters,
                       UnitLength.inches,
                       UnitLength.feet,
                       UnitLength.yards,
                       UnitLength.meters,
                       UnitLength.kilometers,
                       UnitLength.miles]
    
    var conversionCalc: Measurement<UnitLength> {
        let inputAmount = Measurement(value: Double(measurement) ?? 0, unit: unitOptions[inputUnit])
        let outputAmount = inputAmount.converted(to: unitOptions[outputUnit])
        return outputAmount
    }
    
    var formatter: MeasurementFormatter {
        let newFormat = MeasurementFormatter()
        newFormat.unitStyle = .long
        newFormat.unitOptions = .providedUnit
        return newFormat
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("\(formatter.string(from: unitOptions[inputUnit]))", text: $measurement)
                        .keyboardType(.decimalPad)
                    
                    Picker("Input Unit", selection: $inputUnit) {
                        ForEach(0..<unitOptions.count) {
                            let formattedOutput = formatter.string(from: unitOptions[$0])
                            Text("\(formattedOutput)")
                        }
                    }
                    
                    Picker("Output Unit", selection: $outputUnit) {
                        ForEach(0..<unitOptions.count) {
                            let formattedOutput = formatter.string(from: unitOptions[$0])
                            Text("\(formattedOutput)")
                        }
                    }
                } .pickerStyle(WheelPickerStyle())
                
                Section(header: Text("Conversion")) {
                    Text(formatter.string(from: conversionCalc))
                }
            }
            .navigationBarTitle("WeConvert")
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
