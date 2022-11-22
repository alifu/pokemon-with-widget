//
//  TWDailyCheckIn.swift
//  pokemonWidgetExtension
//
//  Created by Rifqi Alfaizi on 21/11/22.
//

import SwiftUI
import WidgetKit

struct TWDailyCheckIn: View {
    var body: some View {
        ZStack {
            
            Image("white-background")
            .resizable()
            .frame(width: 160, height: 160, alignment: .center)
            .background(Color(.systemGray5).opacity(0.5))
            .foregroundColor(Color.black)
            .cornerRadius(16)
            
            VStack {
                Image("calendar")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                
                Text("Daily Check-In")
                    .font(.custom(
                        "Poppins",
                        fixedSize: 12))
                    .fontWeight(.semibold)
                    .frame(width: 123, height: 10, alignment: .center)
                
                Button(action: {
                    //do action
                }){
                Text("Check In Sekarang")
                    .font(.custom(
                        "Poppins",
                        fixedSize: 10))
                    .fontWeight(.semibold)
                    
                }
                .foregroundColor(.white)
                .frame(width: 120, height: 20, alignment: .center)
                .background(Color(.red))
                .cornerRadius(10)
            }
            .foregroundColor(Color.black)
        }

    }
}

struct TWDailyCheckIn_Previews: PreviewProvider {
    static var previews: some View {
        TWDailyCheckIn()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
