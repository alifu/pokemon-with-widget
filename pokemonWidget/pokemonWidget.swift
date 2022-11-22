//
//  pokemonWidget.swift
//  pokemonWidget
//
//  Created by Alif Phincon on 19/10/22.
//

import WidgetKit
import SwiftUI
import Intents

struct MiniDashboardEntry: View {
    var entry: Provider.Entry
    var body: some View {
        TWMiniDashboard()
    }
}

struct RewardShortcutEntry: View {
    var entry: Provider.Entry
    var body: some View {
        TWRewardShortcut()
    }
}

struct DailyCheckInEntry: View {
    var entry: Provider.Entry
    var body: some View {
        TWDailyCheckIn()
    }
}

struct MediumDashboardEntry: View {
    var entry: Provider.Entry
    var body: some View {
        TWMediumDashboard()
    }
}

struct LargeDashboardEntry: View {
    var entry: Provider.Entry
    var body: some View {
        TWLargeDashboard()
    }
}

struct SearchPackageEntry: View {
    var entry: Provider.Entry
    var body: some View {
        TWSearchPackage()
    }
}


struct miniDashboard: Widget {
    let kind: String = "miniDashboard"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            MiniDashboardEntry(entry: entry)
        }
        .configurationDisplayName("Mini Dashboard")
        .description("Lebih cepat lihat sisa pulsa dan kuota")
        .supportedFamilies([.systemSmall])
    }
}

struct rewardShortcut: Widget {
    let kind: String = "rewardShortcut"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            RewardShortcutEntry(entry: entry)
        }
        .configurationDisplayName("Rewards")
        .description("Anti ketinggalan info hadiah yang kamu dapetin")
        .supportedFamilies([.systemSmall])
    }
}

struct dailyCheckIn: Widget {
    let kind: String = "dailyCheckIn"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            DailyCheckInEntry(entry: entry)
        }
        .configurationDisplayName("Daily Check In")
        .description("Ga perlu takut lagi lupa daily check in tiap hari")
        .supportedFamilies([.systemSmall])
    }
}

struct mediumDashboard: Widget {
    let kind: String = "mediumDashboard"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            MediumDashboardEntry(entry: entry)
        }
        .configurationDisplayName("Medium Dashboard")
        .description("Lebih cepat lihat sisa pulsa, kuota dan hadiah")
        .supportedFamilies([.systemMedium])
    }
}

struct largeDashboard: Widget {
    let kind: String = "largeDashboard"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            LargeDashboardEntry(entry: entry)
        }
        .configurationDisplayName("Dashboard")
        .description("Lebih cepat lihat sisa pulsa dan kuota. Dapetin juga info hadiah dan promo")
        .supportedFamilies([.systemLarge])
    }
}

struct searchPackage: Widget {
    let kind: String = "searchPackage"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            SearchPackageEntry(entry: entry)
        }
        .configurationDisplayName("Belanja")
        .description("Lihat dan temukan rekomendasi paket untukmu")
        .supportedFamilies([.systemLarge])
    }
}

@main
struct WidgetsBudle: WidgetBundle {
    var body: some Widget {
        miniDashboard()
        rewardShortcut()
        dailyCheckIn()
        mediumDashboard()
        WidgetsBudleExtender().body
    }
}

struct WidgetsBudleExtender: WidgetBundle {
    var body: some Widget {
        largeDashboard()
        searchPackage()
    }
    
}

