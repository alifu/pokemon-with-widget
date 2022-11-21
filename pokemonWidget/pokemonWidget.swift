//
//  pokemonWidget.swift
//  pokemonWidget
//
//  Created by Alif Phincon on 19/10/22.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }
    
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }
    
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

//MARK: - Mini Dashboard

struct miniDashboard : View {
    var entry: Provider.Entry
    
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

//MARK: - Reward Shortcut
struct rewardShortcut : View {
    var entry: Provider.Entry
    
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

//MARK: - Daily Check In
struct dailyCheckIn : View {
    var entry: Provider.Entry
    
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

//MARK: - Medium Dashboard
struct mediumDashboard : View {
    var entry: Provider.Entry
    
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


//MARK: - Dashboard
struct LargeDashboard : View {
    var entry: Provider.Entry
    
    var body: some View {
        
        VStack {
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
            
            Image("Replace-me")
                .resizable()
                .frame(width: 297, height: 108, alignment: .center)
            
            Image("vector")
                .resizable()
                .frame(width: 24, height: 8, alignment: .center)
            
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

//MARK: - Search Package
struct searchPackage: View {
    var entry: Provider.Entry
    
    @State var text: String = ""
    
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

@main
struct pokemonWidget: Widget {
    let kind: String = "pokemonWidget"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            miniDashboard(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
        // .supportedFamilies([.systemSmall])
    }
}

struct pokemonWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            miniDashboard(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            rewardShortcut(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            dailyCheckIn(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            mediumDashboard(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            
            LargeDashboard(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
            
            searchPackage(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}
