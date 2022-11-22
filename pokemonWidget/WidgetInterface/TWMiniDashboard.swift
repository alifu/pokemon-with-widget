//
//  TWMiniDashboard.swift
//  pokemonWidgetExtension
//
//  Created by Rifqi Alfaizi on 21/11/22.
//

import SwiftUI
import WidgetKit

struct TWMiniDashboard: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Dave Bautista")
                .font(.custom(
                    "Poppins",
                    fixedSize: 15))
                .fontWeight(.semibold)
            
            Text("081234567890")
                .font(.custom(
                    "Poppins",
                    fixedSize: 10))
                .fontWeight(.regular)
                .foregroundColor(Color(.systemGray))
            
            Button(action: {
                //do action
            }) {
                HStack {
                    Text("Rp")
                        .font(.custom(
                            "Poppins",
                            fixedSize: 12))
                        .fontWeight(.semibold)
                    
                    Text("164.300")
                        .font(.custom(
                            "Poppins",
                            fixedSize: 17))
                        .fontWeight(.semibold)
                        .frame(width: 65, height: 24, alignment: .leading)
                    
                    Image("plus")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                }
                .frame(width: 123 , height: 40, alignment: .center)
            }
            .background(Color(.systemGray5).opacity(0.5))
            .foregroundColor(Color.black)
            .cornerRadius(16)
            
            Button(action: {
                //do action
            }) {
                HStack {
                    Image("internet")
                        .resizable()
                        .frame(width: 12, height: 12, alignment: .center)
                    
                    Text("0.8 GB")
                        .font(.custom(
                            "Poppins",
                            fixedSize: 17))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .frame(width: 65, height: 24, alignment: .leading)
                    
                    Image("plus")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                }
                .frame(width: 123 , height: 40, alignment: .center)
            }
            .background(Color(.systemGray5).opacity(0.5))
            .foregroundColor(Color.black)
            .cornerRadius(16)
        }
    }
}

struct TWMiniDashboard_Previews: PreviewProvider {
    static var previews: some View {
        TWMiniDashboard()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
