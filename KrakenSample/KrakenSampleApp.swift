//
//  KrakenSampleApp.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import SwiftUI
import KrakenCommon

@main
struct KrakenSampleApp: App {
    
    @StateObject var sampleApp: KrakenApp = KrakenApp(theme: SampleTheme())
    
    var body: some Scene {
        WindowGroup {
            VehiclesView()
                .environmentObject(sampleApp)
        }
    }
}
