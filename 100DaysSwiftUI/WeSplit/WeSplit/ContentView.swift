//
//  ContentView.swift
//  WeSplit
//
//  Created by Lorenzo Pesci on 09/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercentage = 2

    // ADD COMPUTED PROPERTY TO TURN FROM STRING TO DOUBLE (DEFAULT ONE IF NOT A NUMBER ENTERED)
    var peopleCount: Double {
        (Double(numberOfPeople) ?? 1)
    }

    var totalPerPerson: Double {
//        let peopleCount = Double(numberOfPeople + 2) <- REMOVE THIS
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }

    let tipPercentages = [0, 10, 15, 20, 25]

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)

                    // CHANGE TO TEXTFIELD WITH NUMBER PAD KEYBOARD
                    TextField("Number of people", text: $numberOfPeople)
                        .keyboardType(.numberPad)

//                    Picker("Number of people", selection: $numberOfPeople) {
//                        ForEach(2 ..< 100) {
//                            Text("\($0) people")
//
//                        }
//                    }
                }

                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                }
                .pickerStyle(SegmentedPickerStyle())

                Section(header: Text("Amount per person")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }

                Section(header: Text("Total Amount for the check")) {
                    Text("$\((peopleCount * totalPerPerson), specifier: "%.2f")")
                        .foregroundColor(tipPercentage == 0 ? Color.red : Color.blue)
                }
            }
            .navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
