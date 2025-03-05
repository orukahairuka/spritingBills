//
//  CalendarView.swift
//  SpritingBills
//
//  Created by 櫻井絵理香 on 2025/03/05.
//

import SwiftUI

struct CalendarView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let calendarView = UICalendarView()
        calendarView.locale = Locale(identifier: "ja")
        return calendarView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}

#Preview {
    CalendarView()
}
