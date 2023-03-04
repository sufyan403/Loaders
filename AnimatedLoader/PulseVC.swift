//
//  PulseVC.swift
//  AnimatedLoader
//
//  Created by Developer on 08/02/2023.
//

import UIKit


class PulseVC: UIViewController {

    
    @IBOutlet weak var viewLoader : UIView!
    var arrLayer = [CAShapeLayer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // pulse()
    }
    override func viewDidAppear(_ animated: Bool) {
        pulse(radius: 30, speed: Int(1.95), color: UIColor(named: "Color") ?? .orange)
    }
 
    
    func pulse(radius: Int, speed: Int, color: UIColor){
        
        for _ in 0...4 {
            
            let path = UIBezierPath(arcCenter: .zero, radius: CGFloat(radius), startAngle: 0, endAngle: .pi*2, clockwise: true)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 4
        shapeLayer.position = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        self.view.layer.addSublayer(shapeLayer)
        self.arrLayer.append(shapeLayer)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.animation(layer: self.arrLayer[0], speed: speed, color: color)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.animation(layer: self.arrLayer[1], speed: speed, color: color)

        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            self.animation(layer: self.arrLayer[2], speed: speed, color: color)

        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.animation(layer: self.arrLayer[3], speed: speed, color: color)

        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
            self.animation(layer: self.arrLayer[4], speed: speed, color: color)

        }
    }
    func animation(layer: CAShapeLayer, speed: Int, color: UIColor) {
       // let color = generateRandomColor()
        layer.strokeColor = color.cgColor
        //UIColor(named: "Color")?.cgColor
        let alphaAnimation = CABasicAnimation(keyPath: "opacity")
        alphaAnimation.fromValue = 1.0
        alphaAnimation.toValue = 0.0
        let sizeAnimation = CABasicAnimation(keyPath: "transform.scale")
        sizeAnimation.fromValue = 0.0
        sizeAnimation.toValue = 1.0
        let group = CAAnimationGroup()
        group.animations = [alphaAnimation, sizeAnimation]
        group.duration = 1.4
        group.repeatCount = .greatestFiniteMagnitude
        group.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        layer.add(group, forKey: nil)

    }
}
