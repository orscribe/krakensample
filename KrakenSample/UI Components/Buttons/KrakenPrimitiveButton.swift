//
//  KrakenPrimitiveButton.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import SwiftUI
import KrakenCommon

public struct KrakenPrimitiveButton: View {

    @EnvironmentObject var krakenApp: KrakenApp
    var label: String
    var action: () -> Void
    let color: ButtonColor
    let style: ButtonStyle
    let size: ButtonSize

    public var body: some View {
        Button(label, action: action)
            .modifier(KrakenButtonStyle(color: color, style: style, size:size))
    }
}

struct KrakenButtonStyle : ViewModifier {
    
    @EnvironmentObject var krakenApp: KrakenApp
    let color: ButtonColor
    let style: ButtonStyle
    let size: ButtonSize
    
    func body(content: Content) -> some View {
        switch color {
        case ButtonColor.Primary:
             return AnyView(content
                .padding(krakenApp.Theme.Layout.ButtonLayout.Padding)
                .foregroundColor(krakenApp.Theme.Colors.Brand.OnPrimary)
                .background(krakenApp.Theme.Colors.Brand.Primary)
                .cornerRadius(krakenApp.Theme.Layout.ButtonLayout.CornerRadius)
                .font(.custom(krakenApp.Theme.Typography.Button.typeFace,
                              size: krakenApp.Theme.Typography.Button.size)))
        case ButtonColor.Secondary:
            return AnyView(content
                .padding(krakenApp.Theme.Layout.ButtonLayout.Padding)
                .foregroundColor(krakenApp.Theme.Colors.Brand.OnSecondary)
                .background(krakenApp.Theme.Colors.Brand.Secondary)
                .cornerRadius(krakenApp.Theme.Layout.ButtonLayout.CornerRadius)
                .font(.custom(krakenApp.Theme.Typography.Button.typeFace,
                              size: krakenApp.Theme.Typography.Button.size)))
        case ButtonColor.Error:
            return AnyView(content
                .padding(krakenApp.Theme.Layout.ButtonLayout.Padding)
                .foregroundColor(krakenApp.Theme.Colors.Semantic.OnError)
                .background(krakenApp.Theme.Colors.Semantic.Error)
                .cornerRadius(krakenApp.Theme.Layout.ButtonLayout.CornerRadius)
                .font(.custom(krakenApp.Theme.Typography.Button.typeFace,
                              size: krakenApp.Theme.Typography.Button.size)))
        default:
            return AnyView(content
                .padding(krakenApp.Theme.Layout.ButtonLayout.Padding)
                .foregroundColor(krakenApp.Theme.Colors.Brand.OnPrimary)
                .background(krakenApp.Theme.Colors.Brand.Primary)
                .cornerRadius(krakenApp.Theme.Layout.ButtonLayout.CornerRadius))
        }
    }
}

public enum ButtonColor {
    case Primary
    case Secondary
    case Tertiary
    case Success
    case Warning
    case Error
    case Information
}
public enum ButtonSize {
    case Small
    case Standard
    case Large
}
public enum ButtonStyle {
    case Solid
    case Outline
    case Text
}
