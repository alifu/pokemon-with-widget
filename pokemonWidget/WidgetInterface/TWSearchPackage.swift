//
//  TWSearchPackage.swift
//  pokemonWidgetExtension
//
//  Created by Rifqi Alfaizi on 22/11/22.
//

import SwiftUI
import WidgetKit

struct TWSearchPackage: View {
    
    var body: some View {
        VStack(alignment: .leading){
            
            Button(action: {
                //do action
            }) {
                Image("magnifyingglass")
                    .resizable()
                    .frame(width: 13.33, height: 13.33, alignment: .center)
                
                Text("Cari Paket")
                    .font(.custom(
                        "Poppins",
                        fixedSize: 12))
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .frame(width: 250, height: 12, alignment: .leading)
            }
            .frame(width: 297 , height: 40, alignment: .center)
            .background(Color(.systemGray5).opacity(0.3))
            .foregroundColor(Color.black)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(.systemGray5), lineWidth: 1))
            
            VStack(alignment: .leading){
                HStack{
                    Text("Paket Rekomendasi")
                        .font(.custom(
                            "Poppins",
                            fixedSize: 12))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .frame(height: 30, alignment: .bottomLeading)
                    
                    Image("arrow")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    
                }
                Button(action: {
                    //do action
                }) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Internet Sakti")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 12))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .frame(height: 10, alignment: .leading)
                        }
                        
                        HStack {
                            Text("91 GB")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.semibold)
                            
                            Text("30 Hari")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.regular)
                                .foregroundColor(Color(.systemGray))
                                .frame(width: 50, alignment: .leading)
                            
                            Text("Rp155.000")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.regular)
                                .strikethrough(.random())
                                .foregroundColor(Color(.systemGray))
                            
                            Text("Rp150.000")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.red))
                        }
                        
                    }
                    .frame(width: 220, alignment: .leading)
                    
                    Button(action: {
                        //do action
                    }) {
                        Text("Beli")
                            .font(.custom(
                                "Poppins",
                                fixedSize: 10))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.white))
                        
                    }
                    .frame(width: 43, height: 20, alignment: .center)
                    .background(Color(.red))
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    
                    
                }
                .frame(width: 297 , height: 56, alignment: .center)
                .background(Color(.systemGray5).opacity(0.3))
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.systemGray5), lineWidth: 1))
                
                Button(action: {
                    //do action
                }) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Internet Sakti")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 12))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .frame(height: 10, alignment: .leading)
                        }
                        
                        HStack {
                            Text("91 GB")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.semibold)
                            
                            Text("30 Hari")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.regular)
                                .foregroundColor(Color(.systemGray))
                                .frame(width: 50, alignment: .leading)
                            
                            Text("Rp155.000")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.regular)
                                .strikethrough(.random())
                                .foregroundColor(Color(.systemGray))
                            
                            Text("Rp150.000")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.red))
                        }
                        
                    }
                    .frame(width: 220, alignment: .leading)
                    
                    Button(action: {
                        //do action
                    }) {
                        Text("Beli")
                            .font(.custom(
                                "Poppins",
                                fixedSize: 10))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.white))
                        
                    }
                    .frame(width: 43, height: 20, alignment: .center)
                    .background(Color(.red))
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    
                    
                }
                .frame(width: 297 , height: 56, alignment: .center)
                .background(Color(.systemGray5).opacity(0.3))
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.systemGray5), lineWidth: 1))
            }
            
            VStack(alignment: .leading){
                HStack{
                    Text("Beli lagi yuk")
                        .font(.custom(
                            "Poppins",
                            fixedSize: 12))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .frame(height: 10, alignment: .leading)
                    
                    Image("arrow")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    
                }
                .frame(height: 30, alignment: .bottomLeading)
                Button(action: {
                    //do action
                }) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Internet Sakti")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 12))
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.leading)
                                .frame(height: 10, alignment: .leading)
                        }
                        
                        HStack {
                            Text("91 GB")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.semibold)
                            
                            Text("30 Hari")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.regular)
                                .foregroundColor(Color(.systemGray))
                                .frame(width: 50, alignment: .leading)
                            
                            Text("Rp155.000")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.regular)
                                .strikethrough(.random())
                                .foregroundColor(Color(.systemGray))
                            
                            Text("Rp150.000")
                                .font(.custom(
                                    "Poppins",
                                    fixedSize: 10))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.red))
                        }
                        
                    }
                    .frame(width: 220, alignment: .leading)
                    
                    Button(action: {
                        //do action
                    }) {
                        Text("Beli")
                            .font(.custom(
                                "Poppins",
                                fixedSize: 10))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.white))
                        
                    }
                    .frame(width: 43, height: 20, alignment: .center)
                    .background(Color(.red))
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    
                    
                }
                .frame(width: 297 , height: 56, alignment: .center)
                .background(Color(.systemGray5).opacity(0.3))
                .foregroundColor(Color.black)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(.systemGray5), lineWidth: 1))
                
            }
        }
    }
}

struct TWSearchPackage_Previews: PreviewProvider {
    static var previews: some View {
        TWSearchPackage()
            .previewContext(WidgetPreviewContext(family: .systemLarge))

    }
}
