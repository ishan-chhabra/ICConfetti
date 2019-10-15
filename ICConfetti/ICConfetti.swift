//
//  ICConfetti.swift
//  
//
//  Created by Ishan Chhabra on 14/10/19.
//

import UIKit

enum Colors {
    static let red = UIColor(red: 1.0, green: 0.0, blue: 77.0/255.0, alpha: 1.0)
    static let blue = UIColor.blue
    static let green = UIColor(red: 35.0/255.0 , green: 233/255, blue: 173/255.0, alpha: 1.0)
    static let yellow = UIColor(red: 1, green: 209/255, blue: 77.0/255.0, alpha: 1.0)
}

enum Images {
    static var box: UIImage {
        return UIImage(podAssetName: "Box")!
    }
    
    static var triangle: UIImage {
        return UIImage(podAssetName: "Triangle")!
    }
    
    static var circle: UIImage {
        return UIImage(podAssetName: "Circle")!
    }
    
    static var swirl: UIImage {
        return UIImage(podAssetName: "Spiral")!
    }
}

/// 🎉 A beautiful confetti view that adds delight to your app.
public final class ICConfetti {
    
    public init() {}
    
    public struct EmitterOptions{
        var birthRate: Float = 2.0
        var lifetime: Float = 14.0
        var lifetimeRange: Float = 0
        var velocityRange: CGFloat = 0
        var emissionRange: CGFloat = 0.5
        var spin: CGFloat = 3.5
        var spinRange: CGFloat = 0
        var scaleRange: CGFloat = 0.25
        var scale: CGFloat = 0.1
    }
    
    var emitter = CAEmitterLayer()
    
    /// Confetti colors
    public var colors:[UIColor] = [
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.yellow
    ]
    
    /// Confetti template images
    public var images:[UIImage] = [
        Images.box,
        Images.triangle,
        Images.circle,
        Images.swirl
    ]
    
    /// Confetti velocities
    public var velocities:[Int] = [
        110,
        100,
        155,
        205
    ]
    
    /**
    Starts a particle rain in the provided view.

    - Parameters:
       - in: The view in which particles should pour
       - with: The emitter configuration.

    */
    public func rain(in view: UIView, with options: EmitterOptions? = nil) {
        emitter.emitterPosition = CGPoint(x: view.frame.size.width / 2, y: -10)
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterSize = CGSize(width: view.frame.size.width, height: 2.0)
        emitter.emitterCells = generateEmitterCells(options: options)
        
        view.layer.insertSublayer(emitter, at: 0)
    }
    
    /**
    Stops the particle rain.
    */
    public func stopRaining(){
        emitter.birthRate = 0
    }
    
    /// Generates particle drops
    private func generateEmitterCells(options: EmitterOptions?) -> [CAEmitterCell] {
        
        var cellOptions: EmitterOptions!
        if let options = options{
            cellOptions = options
        } else {
            cellOptions = EmitterOptions()
        }
        
        var cells:[CAEmitterCell] = [CAEmitterCell]()
        for index in 0..<16 {
            let cell = CAEmitterCell()
            cell.birthRate = cellOptions.birthRate
            cell.lifetime = cellOptions.lifetime
            cell.lifetimeRange = cellOptions.lifetimeRange
            cell.velocity = CGFloat(getRandomVelocity())
            cell.velocityRange = cellOptions.velocityRange
            cell.emissionLongitude = CGFloat(Double.pi)
            cell.emissionRange = cellOptions.emissionRange
            cell.spin = cellOptions.spin
            cell.spinRange = cellOptions.spinRange
            cell.color = getNextColor(i: index)
            cell.contents = getNextImage(i: index)
            cell.scaleRange = cellOptions.scaleRange
            cell.scale = cellOptions.scale
            
            cells.append(cell)
            
        }
        
        return cells
        
    }
    
    private func getRandomVelocity() -> Int {
        return velocities[getRandomNumber(n: velocities.count)]
    }
    
    private func getRandomNumber(n: Int) -> Int {
        return Int(arc4random_uniform(UInt32(n)))
    }
    
    private func getNextColor(i:Int) -> CGColor {
        if i <= 4 {
            return colors[0].cgColor
        } else if i <= 8 {
            return colors[1].cgColor
        } else if i <= 12 {
            return colors[2].cgColor
        } else {
            return colors[3].cgColor
        }
    }
    
    private func getNextImage(i:Int) -> CGImage {
        return images[i % images.count].cgImage!
    }
    
}

extension UIImage {
   convenience init?(podAssetName: String) {
       let podBundle = Bundle(for: ICConfetti.self)
       guard let url = podBundle.url(forResource: "Media",
                                     withExtension: "bundle") else {
           return nil
                                       
       }

       self.init(named: podAssetName,
                 in: Bundle(url: url),
                 compatibleWith: nil)
   }
}
