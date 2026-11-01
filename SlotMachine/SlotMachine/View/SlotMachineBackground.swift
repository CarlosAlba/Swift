//
//  SlotMachineBackground.swift
//  SlotMachine
//
//  Created by Alfredo Alba on 11/1/26.
//

import SwiftUI
import UIKit

struct SlotMachineBackground: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView(
            image: UIImage(named: "reel-background")
        )
        
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    func updateUIView(_ uiView: UIImageView, context: Context) {}
}
