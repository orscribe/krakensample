//
//  KrakenButton.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import Foundation
import SwiftUI

public struct KrakenButton {
    public static func Primary(label: String, action: @escaping () -> Void,
                               style: ButtonStyle = ButtonStyle.Solid,
                               size: ButtonSize = ButtonSize.Standard) -> KrakenPrimitiveButton {
        return KrakenPrimitiveButton(label: label, action: action,color:ButtonColor.Primary, style: style, size:size)
    }
    public static func Secondary(label: String, action: @escaping () -> Void,
                               style: ButtonStyle = ButtonStyle.Solid,
                               size: ButtonSize = ButtonSize.Standard) -> KrakenPrimitiveButton {
        return KrakenPrimitiveButton(label: label, action: action,color:ButtonColor.Secondary, style: style, size:size)
    }
    public static func Error(label: String, action: @escaping () -> Void,
                               style: ButtonStyle = ButtonStyle.Solid,
                               size: ButtonSize = ButtonSize.Standard) -> KrakenPrimitiveButton {
        return KrakenPrimitiveButton(label: label, action: action,color:ButtonColor.Error, style: style, size:size)
    }
}
