//
//  Colors.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import Foundation
import SwiftUI
import KrakenCommon

public struct StandardNeutralColors: KrakenNeutralColors {
    public let NeutralOne: Color
    public let NeutralTwo: Color
    public let NeutralThree: Color
    public let NeutralFour: Color
    public let NeutralFive: Color
    public let NeutralSix: Color
    public let NeutralSeven: Color
    public let NeutralEight: Color

    public init() {
        self.NeutralOne = Color.hex("#FFFFFF")
        self.NeutralTwo = Color.hex("#FAFAFA")
        self.NeutralThree = Color.hex("#F5F6F7")
        self.NeutralFour = Color.hex("#E4E9EF")
        self.NeutralFive = Color.hex("#E2E2E2")
        self.NeutralSix = Color.hex("#8E8E93")
        self.NeutralSeven = Color.hex("#6D727A")
        self.NeutralEight = Color.hex("#16171A")
    }
}

public struct StandardSemanticColors: KrakenSemanticColors {
    
    public let Success: Color
    public let Error: Color
    public let Warning: Color
    public let Information: Color
    
    public var OnSuccess: Color
    public var OnError: Color
    public var OnWarning: Color
    public var OnInformation: Color

    public init() {
        self.Success = Color.hex("#34C759")
        self.Error = Color.hex("#FF2D55")
        self.Warning = Color.hex("#FF9500")
        self.Information = Color.hex("#007AFF")
        
        self.OnSuccess = Color.hex("#313531")
        self.OnError = Color.hex("#313531")
        self.OnWarning = Color.hex("#313531")
        self.OnInformation = Color.hex("#f4f7fa")
    }
}

