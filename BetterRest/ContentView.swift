//
//  ContentView.swift
//  BetterRest
//
//  Created by Nick Krasnitskiy on 21.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
            .labelsHidden()
    }
    
    func exampleDates() {
        // create a second date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)
        
        // create a range from those two
        let range = Date.now...tomorrow
    }
}

#Preview {
    ContentView()
}
