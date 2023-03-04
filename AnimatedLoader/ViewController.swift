//
//  ViewController.swift
//  AnimatedLoader
//
//  Created by Developer on 07/02/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneView: UIView!
    @IBOutlet weak var twoView: UIView!
    @IBOutlet weak var threeView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        oneView.layer.cornerRadius = oneView.frame.height/2
        twoView.layer.cornerRadius = twoView.frame.height/2
        threeView.layer.cornerRadius = threeView.frame.height/2
    }
    override func viewDidAppear(_ animated: Bool) {
//        let pulseRadius: CGFloat = 80
//
//        let pulseLoader = PulseLoader(frame: CGRect(x: 0, y: 0, width: pulseRadius*2, height: pulseRadius*2))
//        pulseLoader.center = view.center
//        view.addSubview(pulseLoader)
//        pulseLoader.startPulseAnimation()
        startAnimation()
    }
    func startAnimation() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [.repeat, .autoreverse]) {
          self.oneView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        }

        UIView.animate(withDuration: 0.5, delay: 0.1, options: [.repeat, .autoreverse]) {
            self.twoView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        }
        UIView.animate(withDuration: 0.5, delay: 0.2, options: [.repeat, .autoreverse]) {
            self.threeView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
        }
    }


}


//class PulseLoader: UIView {
//
//    var pulseLayers = [CAShapeLayer]()
//    let numberOfPulse = 50
//    let pulseRadius: CGFloat = 80
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.backgroundColor = UIColor.clear
//        self.createPulse()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        self.backgroundColor = UIColor.clear
//        self.createPulse()
//    }
//
//    func createPulse() {
//        for _ in 0 ..< numberOfPulse {
//            let pulseLayer = CAShapeLayer()
//            pulseLayer.frame = CGRect(x: 0, y: 0, width: pulseRadius*2, height: pulseRadius*2)
//            pulseLayer.path = UIBezierPath(ovalIn: pulseLayer.frame).cgPath
//            pulseLayer.fillColor = UIColor.green.cgColor
//            pulseLayer.opacity = 0.0
//            pulseLayer.lineWidth = 2.0
//            self.layer.addSublayer(pulseLayer)
//            pulseLayers.append(pulseLayer)
//        }
//    }
//
//    func startPulseAnimation() {
//        for i in 0 ..< numberOfPulse {
//            let delay = Double(i) * 0.2
//            let scale = CABasicAnimation(keyPath: "transform.scale")
//            scale.duration = 1.5
//            scale.fromValue = 0.0
//            scale.toValue = 1.0
//            scale.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
//            scale.autoreverses = true
//            scale.repeatCount = .infinity
//            pulseLayers[i].add(scale, forKey: "scale")
//
//            let opacity = CABasicAnimation(keyPath: "opacity")
//            opacity.duration = 1.5
//            opacity.fromValue = 0.45
//            opacity.toValue = 0.0
//            opacity.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
//            opacity.autoreverses = true
//            opacity.repeatCount = .infinity
//            pulseLayers[i].add(opacity, forKey: "opacity")
//
//            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
//                self.pulseLayers[i].removeAllAnimations()
//            }
//        }
//    }
//}
