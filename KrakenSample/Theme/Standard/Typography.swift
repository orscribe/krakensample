//
//  Typography.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import KrakenCommon
import SwiftUI

public struct StandardTypography: KrakenTypography {
    
    public let Title: KrakenFont
    public let SubTitle: KrakenFont
    public let Body: KrakenFont
    public let Button: KrakenFont
    
    public init() {
        self.Title = KrakenFont(typeFace: "Helvetica Neue UltraLight Italic", size: 40, lineSpacing: 8)
        self.SubTitle = KrakenFont(typeFace: "Helvetica Neue", size: 25, lineSpacing: 8)
        self.Body = KrakenFont(typeFace: "Helvetica Neue", size: 16, lineSpacing: 12)
        self.Button = KrakenFont(typeFace: "Helvetica Neue", size: 20, lineSpacing: 8)
    }
}
