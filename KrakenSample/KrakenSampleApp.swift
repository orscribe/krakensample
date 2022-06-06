//
//  KrakenSampleApp.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import SwiftUI
import KrakenCommon
import KrakenCorp

@main
struct KrakenSampleApp: App {
    
    @StateObject var sampleDI = DependencyFactory.DependencyContainer
    
    var body: some Scene {
        WindowGroup {
            AuthenticationSwitchView(
                viewModel: AuthenticationSwitchViewModel(auth: sampleDI.Authentication))
                .environmentObject(sampleDI)
        }
    }
}

extension KrakenSampleApp {
    struct DependencyFactory {
        static public var DependencyContainer: KrakenApp = { () -> KrakenApp in
            let persistence = StandardPersistence()
            let auth = FakeAuthentication(persistence: persistence)
            let config = SampleConfiguration(persistence: persistence)
            let network = SampleNetwork(auth: auth, config: config)
            let theme = SampleTheme()
            
            return KrakenApp(persistence: persistence,
                             auth: auth,
                             config: config,
                             network: network,
                             theme: theme )}()
    }
}
