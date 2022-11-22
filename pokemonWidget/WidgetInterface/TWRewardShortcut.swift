//
//  TWRewardShortcut.swift
//  pokemonWidgetExtension
//
//  Created by Rifqi Alfaizi on 21/11/22.
//

import SwiftUI
import WidgetKit

struct TWRewardShortcut: View {
    
    var body: some View {
        ZStack {
            
            Image("red-background")
            .resizable()
            .frame(width: 160, height: 160, alignment: .center)
            .background(Color(.systemGray5).opacity(0.5))
            .foregroundColor(Color.black)
            .cornerRadius(16)
            
            VStack {
                Image("gift")
                    .resizable()
                    .frame(width: 72, height: 72, alignment: .center)
                
                Text("Belum ada hadiah")
                    .font(.custom(
                        "Poppins",
                        fixedSize: 12))
                    .fontWeight(.semibold)
                
                Text("mainkan misi >")
                    .font(.custom(
                        "Poppins",
                        fixedSize: 12))
                    .fontWeight(.regular)
            }
            .foregroundColor(Color.white)
        }
    }
}

struct TWRewardShortcut_Previews: PreviewProvider {
    static var previews: some View {
        TWRewardShortcut()
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
