//
//  ContentView.swift
//  BetterRest
//
//  Created by Nick Krasnitskiy on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp =  Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeAmount = 1
   
    var body: some View {
        NavigationStack {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12,step: 0.25)
                    .padding()
                
                Text("Daily coffee intake")
                    .font(.headline)
                Stepper("\(coffeAmount) cup(s)", value: $coffeAmount, in: 1...20)
                    .padding()
            }
            .navigationTitle("BetterRest")
            .toolbar {
                Button("Calculate", action: calculateBedTime)
            }
        }
    }
    
    func calculateBedTime() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
