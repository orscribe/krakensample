//
//  SampleTheme.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import Foundation
import SwiftUI
import KrakenCommon

public struct SampleTheme: KrakenTheme {
    
    public var Colors: KrakenColors
    public var Layout: KrakenLayout
    public var Typography: KrakenTypography

    public init() {
        self.Colors = SampleColors()
        self.Layout = StandardLayout()
        self.Typography = StandardTypography()
    }
    
}
