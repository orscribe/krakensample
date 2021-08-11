//
//  Spinner.swift
//  KrakenSample
//
//  Created by wesley Mitchell on 8/11/21.
//

import SwiftUI
import UIKit

public struct Spinner: UIViewRepresentable {
    let isAnimating: Bool
    let style: UIActivityIndicatorView.Style
    
    public init(isAnimating: Bool, style: UIActivityIndicatorView.Style) {
        self.isAnimating = isAnimating
        self.style = style
    }

    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        let spinner = UIActivityIndicatorView(style: style)
        spinner.hidesWhenStopped = true
        return spinner
    }

    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
