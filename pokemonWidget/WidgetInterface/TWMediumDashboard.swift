//
//  TWMediumDashboard.swift
//  pokemonWidgetExtension
//
//  Created by Rifqi Alfaizi on 21/11/22.
//

import SwiftUI
import WidgetKit

struct TWMediumDashboard: View {
    
    var body: some View {
        
        VStack {
            HStack{
                Button(action: {
                    //do action
                }){
                    HStack {
                        Image("sim-card")
                            .resizable()
                            .frame(width: 16, height: 20, alignment: .center)
                    }
                    VStack(alignment: .leading) {
                        Text("Dave Bautista")
                            .font(.custom(
                                "Poppins",
                                fixedSize: 15))
                            .fontWeight(.semibold)
                            .frame(width: 180, height: 15, alignment: .leading)
                        
                        Text("081234567890")
                            .font(.custom(
                                "Poppins",
                                fixedSize: 12))
                            .fontWeight(.regular)
                            .foregroundColor(Color(.systemGray))
                    }
                    
                }
                .frame(width: 240 , height: 52, alignment: .center)
                .foregroundColor(Color.black)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.systemGray5), lineWidth: 1))
                
                Button(action: {
                    // do action
                }) {
                    Image("gift")
                        .resizable()
                        .frame(width: 32, height: 32, alignment: .center)
                }
                .frame(width: 56 , height: 52, alignment: .center)
                .background(Color(.systemGray5).opacity(0.3))
                .foregroundColor(Color.black)
                .cornerRadius(20)
            }
            HStack{
                Button(action: {
                    //do action
                }) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Rp")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 12))
                                .fontWeight(.semibold)
                                .frame(height: 10, alignment: .leading)
                            
                            Text("0")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 17))
                                .fontWeight(.semibold)
                                .frame(height: 10, alignment: .leading)
                            
                            Image("plus")
                                .resizable()
                                .frame(width: 16, height: 16, alignment: .center)
                        }
                        
                        Text("s.d 31 November 2022")
                            .font(.custom(
                                "Poppins",
                                fixedSize: 10))
                            .fontWeight(.regular)
                            .foregroundColor(Color(.systemGray))
                            .frame(width: 120, height: 10, alignment: .leading)
                    }
                    
                }
                .frame(width: 144.5 , height: 64, alignment: .center)
                .background(Color(.systemGray5).opacity(0.3))
                .foregroundColor(Color.black)
                .cornerRadius(20)
                
                
                Button(action: {
                    //do action
                }) {
                    VStack(alignment: .leading) {
                        HStack {
                            Image("internet")
                                .resizable()
                                .frame(width: 12, height: 12, alignment: .center)
                            
                            Text("0.8 GB     ")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 17))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .frame(height: 10, alignment: .leading)
                            
                            Image("plus")
                                .resizable()
                                .frame(width: 16, height: 16, alignment: .center)
                        }
                        
                        Text("s.d 31 November 2022")
                            .font(.custom(
                                "Poppins",
                                fixedSize: 10))
                            .fontWeight(.regular)
                            .foregroundColor(Color(.systemGray))
                            .frame(width: 120, height: 10, alignment: .leading)
                    }
                    
                }
                .frame(width: 144.5 , height: 64, alignment: .center)
                .background(Color(.systemGray5).opacity(0.3))
                .foregroundColor(Color.black)
                .cornerRadius(20)
            }
        }
    }
}

struct TWMediumDashboard_Previews: PreviewProvider {
    static var previews: some View {
        TWMediumDashboard()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
