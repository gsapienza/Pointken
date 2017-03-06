//
//  ConfettiView.swift
//  Pointken
//
//  Created by Gregory Sapienza on 3/2/17.
//  Copyright © 2017 Token. All rights reserved.
//

import UIKit

class ConfettiView: UIView {

    var emitter: CAEmitterLayer!
    var colors: [UIColor]!
    var intensity: Float!
    
    fileprivate var active :Bool!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        colors = [UIColor(colorLiteralRed: 255/255, green: 103/255, blue: 93/255, alpha: 1), UIColor(colorLiteralRed: 252/255, green: 203/255, blue: 232/255, alpha: 1), UIColor(colorLiteralRed: 273/255, green: 180/255, blue: 135/255, alpha: 1)]
       
        intensity = 0.2
        
        active = false
    }
    
    func startConfetti() {
        emitter = CAEmitterLayer()
        
        emitter.emitterPosition = CGPoint(x: frame.size.width / 2.0, y: -20)
        emitter.emitterShape = kCAEmitterLayerLine
        emitter.emitterSize = CGSize(width: frame.size.width, height: 1)
        
        var cells = [CAEmitterCell]()
        for (index, color) in colors.enumerated() {
            cells.append(confettiWithColor(color, index: index))
        }
        
        emitter.emitterCells = cells
        layer.addSublayer(emitter)
        active = true
    }
    
    func stopConfetti() {
        emitter?.birthRate = 0
        active = false
    }
    
    func confettiWithColor(_ color: UIColor, index: Int) -> CAEmitterCell {
        let confetti = CAEmitterCell()
        
        confetti.name = "\(index)"
        confetti.birthRate = 4.0 * intensity
        confetti.lifetime = 180.0 * intensity
        confetti.lifetimeRange = 0
        confetti.color = color.cgColor
        confetti.velocity = CGFloat(250.0 * intensity)
        confetti.velocityRange = CGFloat(80.0 * intensity)
        confetti.emissionLongitude = CGFloat(M_PI)
        confetti.emissionRange = CGFloat(M_PI_4)
        confetti.spin = CGFloat(3.5 * intensity)
        confetti.spinRange = CGFloat(4.0 * intensity)
        
        confetti.alphaSpeed = -1.0 / 180.0 * intensity
        confetti.redSpeed = -1.0 / 180.0 * intensity
        confetti.blueSpeed = -1.0 / 180.0 * intensity
        confetti.greenSpeed = -1.0 / 180.0 * intensity
        
        confetti.contents = UIImage(named: "confetti")?.cgImage
        return confetti
    }
    
    internal func isActive() -> Bool {
        return self.active
    }

}
