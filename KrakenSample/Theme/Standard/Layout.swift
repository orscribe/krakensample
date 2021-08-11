//
//  Layout.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import Foundation
import SwiftUI
import KrakenCommon

public struct StandardLayout : KrakenLayout {
    public let ButtonLayout: KrakenButtonLayout
    
    public init() {
        ButtonLayout = StandardButtonLayout()
    }
}

public struct StandardButtonLayout : KrakenButtonLayout {
    public let CornerRadius: CGFloat
    public let Padding: CGFloat
    
    public init() {
        CornerRadius = CGFloat(4)
        Padding = CGFloat(10)
    }
}
