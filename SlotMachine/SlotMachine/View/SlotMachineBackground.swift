//
//  SlotMachineBackground.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI
import UIKit

struct SlotMachineBackground: UIViewRepresentable {
    
    /// Configure UIImage
    /// - Parameter context: information about the view
    /// - Returns: configured UIImage
    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView(
            image: UIImage(named: "reels-background")
        )
        
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    /// Function updating the existing UIImage
    /// - Parameters:
    ///   - uiView: existing UIImage
    ///   - context: information about the current view
    func updateUIView(_ uiView: UIImageView, context: Context) {}
}
