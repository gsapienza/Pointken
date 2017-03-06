//
//  TMLogoView.swift
//  consumer
//
//  Created by Vladislav Zagorodnyuk on 7/5/16.
//  Copyright © 2016 Human Ventures Co. All rights reserved.
//

import UIKit

class TMLogo: NSObject {
    
    class func drawLogo(frame: CGRect = CGRect(x: 0, y: 0, width: 369, height: 79), resizing: ResizingBehavior = .aspectFit) {
        /// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        /// Resize To Frame
        context.saveGState()
        let resizedFrame = resizing.apply(rect: CGRect(x: 0, y: 0, width: 176, height: 35), target: frame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        let resizedScale = CGSize(width: resizedFrame.width / 176, height: resizedFrame.height / 35)
        context.scaleBy(x: resizedScale.width, y: resizedScale.height)
        
        /// Group
        do {
            context.saveGState()
            
            /// Combined Shape
            let combinedShape = UIBezierPath()
            combinedShape.move(to: CGPoint(x: 0, y: 6.56))
            combinedShape.addLine(to: CGPoint(x: 0.37, y: 6.46))
            combinedShape.addCurve(to: CGPoint(x: 3.77, y: 6.02), controlPoint1: CGPoint(x: 1.48, y: 6.17), controlPoint2: CGPoint(x: 2.63, y: 6.02))
            combinedShape.addLine(to: CGPoint(x: 7.67, y: 6.02))
            combinedShape.addLine(to: CGPoint(x: 7.67, y: 31.23))
            combinedShape.addCurve(to: CGPoint(x: 7.22, y: 34.63), controlPoint1: CGPoint(x: 7.67, y: 32.38), controlPoint2: CGPoint(x: 7.52, y: 33.52))
            combinedShape.addLine(to: CGPoint(x: 7.12, y: 35))
            combinedShape.addLine(to: CGPoint(x: 14.79, y: 35))
            combinedShape.addLine(to: CGPoint(x: 14.69, y: 34.63))
            combinedShape.addCurve(to: CGPoint(x: 14.24, y: 31.23), controlPoint1: CGPoint(x: 14.39, y: 33.52), controlPoint2: CGPoint(x: 14.24, y: 32.38))
            combinedShape.addLine(to: CGPoint(x: 14.24, y: 6.02))
            combinedShape.addLine(to: CGPoint(x: 18.13, y: 6.02))
            combinedShape.addCurve(to: CGPoint(x: 21.54, y: 6.46), controlPoint1: CGPoint(x: 19.28, y: 6.02), controlPoint2: CGPoint(x: 20.43, y: 6.17))
            combinedShape.addLine(to: CGPoint(x: 21.91, y: 6.56))
            combinedShape.addLine(to: CGPoint(x: 21.91, y: 0))
            combinedShape.addLine(to: CGPoint.zero)
            combinedShape.addLine(to: CGPoint(x: 0, y: 6.56))
            combinedShape.close()
            combinedShape.move(to: CGPoint(x: 54.77, y: 0))
            combinedShape.addLine(to: CGPoint(x: 43.82, y: 0))
            combinedShape.addCurve(to: CGPoint(x: 38.89, y: 4.92), controlPoint1: CGPoint(x: 41.09, y: 0), controlPoint2: CGPoint(x: 38.89, y: 2.2))
            combinedShape.addLine(to: CGPoint(x: 38.89, y: 30.08))
            combinedShape.addCurve(to: CGPoint(x: 43.82, y: 35), controlPoint1: CGPoint(x: 38.89, y: 32.8), controlPoint2: CGPoint(x: 41.09, y: 35))
            combinedShape.addLine(to: CGPoint(x: 54.77, y: 35))
            combinedShape.addCurve(to: CGPoint(x: 59.7, y: 30.08), controlPoint1: CGPoint(x: 57.49, y: 35), controlPoint2: CGPoint(x: 59.7, y: 32.8))
            combinedShape.addLine(to: CGPoint(x: 59.7, y: 4.92))
            combinedShape.addCurve(to: CGPoint(x: 54.77, y: 0), controlPoint1: CGPoint(x: 59.7, y: 2.2), controlPoint2: CGPoint(x: 57.49, y: 0))
            combinedShape.close()
            combinedShape.move(to: CGPoint(x: 53.13, y: 28.57))
            combinedShape.addCurve(to: CGPoint(x: 52.72, y: 28.98), controlPoint1: CGPoint(x: 53.13, y: 28.8), controlPoint2: CGPoint(x: 52.94, y: 28.98))
            combinedShape.addLine(to: CGPoint(x: 45.87, y: 28.98))
            combinedShape.addCurve(to: CGPoint(x: 45.46, y: 28.57), controlPoint1: CGPoint(x: 45.64, y: 28.98), controlPoint2: CGPoint(x: 45.46, y: 28.8))
            combinedShape.addLine(to: CGPoint(x: 45.46, y: 6.43))
            combinedShape.addCurve(to: CGPoint(x: 45.87, y: 6.02), controlPoint1: CGPoint(x: 45.46, y: 6.2), controlPoint2: CGPoint(x: 45.64, y: 6.02))
            combinedShape.addLine(to: CGPoint(x: 52.72, y: 6.02))
            combinedShape.addCurve(to: CGPoint(x: 53.13, y: 6.43), controlPoint1: CGPoint(x: 52.94, y: 6.02), controlPoint2: CGPoint(x: 53.13, y: 6.2))
            combinedShape.addLine(to: CGPoint(x: 53.13, y: 28.57))
            combinedShape.close()
            combinedShape.move(to: CGPoint(x: 99.41, y: 0))
            combinedShape.addLine(to: CGPoint(x: 91.06, y: 0))
            combinedShape.addCurve(to: CGPoint(x: 90.8, y: 2.59), controlPoint1: CGPoint(x: 91.29, y: 0.87), controlPoint2: CGPoint(x: 91.2, y: 1.79))
            combinedShape.addLine(to: CGPoint(x: 84.35, y: 15.66))
            combinedShape.addLine(to: CGPoint(x: 84.35, y: 3.77))
            combinedShape.addCurve(to: CGPoint(x: 84.8, y: 0.37), controlPoint1: CGPoint(x: 84.35, y: 2.62), controlPoint2: CGPoint(x: 84.5, y: 1.48))
            combinedShape.addLine(to: CGPoint(x: 84.9, y: 0))
            combinedShape.addLine(to: CGPoint(x: 77.23, y: 0))
            combinedShape.addLine(to: CGPoint(x: 77.33, y: 0.37))
            combinedShape.addCurve(to: CGPoint(x: 77.78, y: 3.77), controlPoint1: CGPoint(x: 77.63, y: 1.48), controlPoint2: CGPoint(x: 77.78, y: 2.62))
            combinedShape.addLine(to: CGPoint(x: 77.78, y: 31.23))
            combinedShape.addCurve(to: CGPoint(x: 77.33, y: 34.63), controlPoint1: CGPoint(x: 77.78, y: 32.38), controlPoint2: CGPoint(x: 77.63, y: 33.52))
            combinedShape.addLine(to: CGPoint(x: 77.23, y: 35))
            combinedShape.addLine(to: CGPoint(x: 84.9, y: 35))
            combinedShape.addLine(to: CGPoint(x: 84.8, y: 34.63))
            combinedShape.addCurve(to: CGPoint(x: 84.35, y: 31.23), controlPoint1: CGPoint(x: 84.5, y: 33.52), controlPoint2: CGPoint(x: 84.35, y: 32.38))
            combinedShape.addLine(to: CGPoint(x: 84.35, y: 18.23))
            combinedShape.addLine(to: CGPoint(x: 91.35, y: 32.41))
            combinedShape.addCurve(to: CGPoint(x: 91.61, y: 35), controlPoint1: CGPoint(x: 91.75, y: 33.21), controlPoint2: CGPoint(x: 91.84, y: 34.13))
            combinedShape.addLine(to: CGPoint(x: 99.96, y: 35))
            combinedShape.addLine(to: CGPoint(x: 91.04, y: 16.95))
            combinedShape.addLine(to: CGPoint(x: 99.41, y: 0))
            combinedShape.close()
            combinedShape.move(to: CGPoint(x: 175.72, y: 0.37))
            combinedShape.addLine(to: CGPoint(x: 175.82, y: 0))
            combinedShape.addLine(to: CGPoint(x: 168.15, y: 0))
            combinedShape.addLine(to: CGPoint(x: 168.25, y: 0.37))
            combinedShape.addCurve(to: CGPoint(x: 168.7, y: 3.77), controlPoint1: CGPoint(x: 168.55, y: 1.48), controlPoint2: CGPoint(x: 168.7, y: 2.62))
            combinedShape.addLine(to: CGPoint(x: 168.7, y: 20.52))
            combinedShape.addLine(to: CGPoint(x: 158.56, y: 0))
            combinedShape.addLine(to: CGPoint(x: 151.44, y: 0))
            combinedShape.addLine(to: CGPoint(x: 151.54, y: 0.37))
            combinedShape.addCurve(to: CGPoint(x: 151.99, y: 3.77), controlPoint1: CGPoint(x: 151.84, y: 1.48), controlPoint2: CGPoint(x: 151.99, y: 2.62))
            combinedShape.addLine(to: CGPoint(x: 151.99, y: 31.23))
            combinedShape.addCurve(to: CGPoint(x: 151.54, y: 34.63), controlPoint1: CGPoint(x: 151.99, y: 32.38), controlPoint2: CGPoint(x: 151.84, y: 33.52))
            combinedShape.addLine(to: CGPoint(x: 151.44, y: 35))
            combinedShape.addLine(to: CGPoint(x: 159.11, y: 35))
            combinedShape.addLine(to: CGPoint(x: 159.01, y: 34.63))
            combinedShape.addCurve(to: CGPoint(x: 158.56, y: 31.23), controlPoint1: CGPoint(x: 158.72, y: 33.52), controlPoint2: CGPoint(x: 158.56, y: 32.38))
            combinedShape.addLine(to: CGPoint(x: 158.56, y: 14.48))
            combinedShape.addLine(to: CGPoint(x: 168.7, y: 35))
            combinedShape.addLine(to: CGPoint(x: 175.82, y: 35))
            combinedShape.addLine(to: CGPoint(x: 175.72, y: 34.63))
            combinedShape.addCurve(to: CGPoint(x: 175.27, y: 31.23), controlPoint1: CGPoint(x: 175.42, y: 33.52), controlPoint2: CGPoint(x: 175.27, y: 32.38))
            combinedShape.addLine(to: CGPoint(x: 175.27, y: 3.77))
            combinedShape.addCurve(to: CGPoint(x: 175.72, y: 0.37), controlPoint1: CGPoint(x: 175.27, y: 2.62), controlPoint2: CGPoint(x: 175.42, y: 1.48))
            combinedShape.close()
            combinedShape.move(to: CGPoint(x: 115.57, y: 0))
            combinedShape.addLine(to: CGPoint(x: 115.67, y: 0.37))
            combinedShape.addCurve(to: CGPoint(x: 116.12, y: 3.77), controlPoint1: CGPoint(x: 115.97, y: 1.48), controlPoint2: CGPoint(x: 116.12, y: 2.62))
            combinedShape.addLine(to: CGPoint(x: 116.12, y: 31.23))
            combinedShape.addCurve(to: CGPoint(x: 115.67, y: 34.63), controlPoint1: CGPoint(x: 116.12, y: 32.38), controlPoint2: CGPoint(x: 115.97, y: 33.52))
            combinedShape.addLine(to: CGPoint(x: 115.57, y: 35))
            combinedShape.addLine(to: CGPoint(x: 134.74, y: 35))
            combinedShape.addLine(to: CGPoint(x: 134.74, y: 28.44))
            combinedShape.addLine(to: CGPoint(x: 134.37, y: 28.54))
            combinedShape.addCurve(to: CGPoint(x: 130.96, y: 28.98), controlPoint1: CGPoint(x: 133.26, y: 28.83), controlPoint2: CGPoint(x: 132.11, y: 28.98))
            combinedShape.addLine(to: CGPoint(x: 122.69, y: 28.98))
            combinedShape.addLine(to: CGPoint(x: 122.69, y: 20.23))
            combinedShape.addLine(to: CGPoint(x: 129.87, y: 20.23))
            combinedShape.addCurve(to: CGPoint(x: 133.27, y: 20.68), controlPoint1: CGPoint(x: 131.02, y: 20.23), controlPoint2: CGPoint(x: 132.16, y: 20.38))
            combinedShape.addLine(to: CGPoint(x: 133.64, y: 20.78))
            combinedShape.addLine(to: CGPoint(x: 133.64, y: 13.67))
            combinedShape.addLine(to: CGPoint(x: 133.27, y: 13.77))
            combinedShape.addCurve(to: CGPoint(x: 129.87, y: 14.22), controlPoint1: CGPoint(x: 132.16, y: 14.07), controlPoint2: CGPoint(x: 131.02, y: 14.22))
            combinedShape.addLine(to: CGPoint(x: 122.69, y: 14.22))
            combinedShape.addLine(to: CGPoint(x: 122.69, y: 6.02))
            combinedShape.addLine(to: CGPoint(x: 130.96, y: 6.02))
            combinedShape.addCurve(to: CGPoint(x: 134.37, y: 6.46), controlPoint1: CGPoint(x: 132.11, y: 6.02), controlPoint2: CGPoint(x: 133.26, y: 6.17))
            combinedShape.addLine(to: CGPoint(x: 134.74, y: 6.56))
            combinedShape.addLine(to: CGPoint(x: 134.74, y: 0))
            combinedShape.addLine(to: CGPoint(x: 115.57, y: 0))
            combinedShape.close()
            combinedShape.move(to: CGPoint(x: 115.57, y: 0))
            context.saveGState()
            combinedShape.usesEvenOddFillRule = true
            context.saveGState()
            combinedShape.addClip()
            
            context.drawLinearGradient(CGGradient(colorsSpace: nil, colors: [
                UIColor(hue: 0.07, saturation: 0.494, brightness: 0.682, alpha: 1).cgColor,
                UIColor(hue: 0.085, saturation: 0.444, brightness: 0.953, alpha: 1).cgColor,
                ] as CFArray, locations: [0, 1])!,
                                       start: CGPoint(x: 3.41, y: 14.56),
                                       end: CGPoint(x: 175.82, y: 14.56),
                                       options: [.drawsBeforeStartLocation, .drawsAfterEndLocation])
            context.restoreGState()
            context.restoreGState()
            
            /// Combined Shape (Outline Mask)
            context.saveGState()
            combinedShape.addClip()
            
            // Empty.
            
            context.restoreGState()
            // End Combined Shape (Outline Mask)
            
            context.restoreGState()
        }
        
        context.restoreGState()
    }
    
    
    //MARK: - Canvas Images
    
    /// Logo
    
    class func imageOfLogo(_ size: CGSize = CGSize(width: 369, height: 79), resizing: ResizingBehavior = .aspectFit) -> UIImage {
        var image: UIImage
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        TMLogo.drawLogo(frame: CGRect(origin: CGPoint.zero, size: size), resizing: resizing)
        image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
    
    //MARK: - Resizing Behavior
    
    enum ResizingBehavior {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
