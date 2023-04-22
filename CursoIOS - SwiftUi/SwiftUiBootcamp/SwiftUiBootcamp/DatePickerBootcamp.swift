  //
//  DatePickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by cassio on 21/04/23.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    
    @State var selecionadaDate: Date = Date()
    let dataInicial: Date = Calendar.current.date(from: DateComponents(year: 2023))
?? Date()
    let dataFinal: Date = Date()
    
    var dataFormater: DateFormatter {
        let formate = DateFormatter()
        formate.dateStyle = .short
        return formate
    }
    
    var body: some View {
        
        VStack{
            Text("Selecione a data")
            Text(dataFormater.string(from: selecionadaDate))
                .font(.title)
            
            DatePicker("Selecione a data", selection: $selecionadaDate, in:
                        dataInicial...dataFinal, displayedComponents: [.date])
            .accentColor(Color.red)
            .datePickerStyle(
                CompactDatePickerStyle()
                //GraphicalDatePickerStyle()
                //WheelPickerStyle()
            )
            Spacer()
            
        }.padding()

    }
}

struct PickerBootcamp3_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
 
