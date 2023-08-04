//
//  TimePicker.swift
//  ExperimentApp
//
//  Created by Bell Chen on 8/2/23.
//

import SwiftUI

struct TimePicker: View {
    @Binding var selection: Time

    var body: some View {
        Picker("Time",selection:$selection){
            ForEach(Time.allCases){time in
                //ThemeView(theme: theme).tag(time)
                TimeView(time:time)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct TimePicker_Previews: PreviewProvider {
    static var previews: some View {
        TimePicker(selection: .constant(.morning))
    }
}