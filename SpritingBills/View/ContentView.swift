//
//  ContentView.swift
//  SpritingBills
//
//  Created by 櫻井絵理香 on 2025/03/03.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    var body: some View {
        CalendarView()
            .padding()
            .navigationTitle("UICalendarView")
    }
}

#Preview {
    ContentView()
}
