//
//  SampleColors.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import Foundation
import SwiftUI
import KrakenCommon

public struct SampleColors: KrakenColors {
    
    public var Brand: KrakenBrandColors
    public var Semantic: KrakenSemanticColors
    public var Neutral: KrakenNeutralColors
    
    public var Background: Color
    public var Surface: Color
    public var OnBackground: Color
    public var OnSurface: Color


    public init() {
        self.Brand = SampleBrandColors()
        self.Semantic = StandardSemanticColors()
        self.Neutral = StandardNeutralColors()
        
        Background = Color.hex("#ffffff")
        Surface = Color.hex("#70d6ff")
        OnBackground = Color.hex("#70d6ff")
        OnSurface = Color.hex("#70d6ff")
    }
}

public struct SampleBrandColors: KrakenBrandColors {
    public let Primary: Color
    public let PrimaryVariant: Color
    
    public let Secondary: Color
    public let SecondaryVariant: Color
    
    public let Tertiary: Color
    public let TertiaryVariant: Color
    
    public let OnPrimary: Color
    public let OnSecondary: Color
    public let OnTertiary: Color
    
    public init() {
        Primary = Color.hex("#2B6BDD")
        PrimaryVariant = Color.hex("#173A78")
        
        Secondary = Color.hex("#f36f21")
        SecondaryVariant = Color.hex("#70d6ff")
        
        Tertiary = Color.hex("#70d6ff")
        TertiaryVariant = Color.hex("#70d6ff")
        
        OnPrimary = Color.hex("ffffff")
        OnSecondary = Color.hex("#70d6ff")
        OnTertiary = Color.hex("#70d6ff")
    }
}
