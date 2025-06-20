// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct ThemedButtonStyle: ButtonStyle {
    
    /// The main color used for the background of the button
    public var primaryColor: Color = .accentColor
    
    /// The color of the text or icon inside the button
    public var secondaryColor: Color = .white
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? primaryColor.opacity(0.8) : primaryColor)
            .foregroundStyle(secondaryColor)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(Animation.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
