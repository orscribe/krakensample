//
//  KrakenContainer.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import SwiftUI
import KrakenCommon

public struct KrakenContainer<Content: View>: View {
    
    @EnvironmentObject var krakenApp: KrakenApp
    let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            content
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(krakenApp.Theme.Colors.Background)
    }
}
