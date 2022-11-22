//
//  TimelineEntry.swift
//  pokemonWidgetExtension
//
//  Created by Rifqi Alfaizi on 21/11/22.
//

import WidgetKit
import SwiftUI
import Intents

struct SimpleEntry: TimelineEntry {
    var date: Date
    let configuration: ConfigurationIntent
}
