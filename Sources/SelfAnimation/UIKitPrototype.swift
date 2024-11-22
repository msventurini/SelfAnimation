//
//  CALayerTesting.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//

import UIKit
import SwiftUI

public class CALayerTesting: UIViewController {
    
    var selfShape: SelfShape = .euphoria
    
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let uit = UIView(frame: selfShape.frame)
        let testeLayer = CALayer()
        
        uit.center = view.center
        
        testeLayer.frame = uit.bounds
        
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.lineWidth = selfShape.lineWidth
        shapeLayer.lineDashPattern = [0.01, selfShape.lineDashSpacing]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        let path = CGMutablePath()
        path.addPath(UIBezierPath(emotionShape: selfShape,in: testeLayer.frame).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = uit.bounds
        
        testeLayer.addSublayer(shapeLayer)
        let replicated = getReplicatorLayer(inputLayer: testeLayer, numberOfLayers: 30)
        
        replicated.frame = testeLayer.bounds
        uit.layer.addSublayer(replicated)
        view.addSubview(uit)
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 5
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
    }
    
    func getReplicatorLayer(inputLayer: CALayer,numberOfLayers: Int) -> CAReplicatorLayer {
        
        let replicatorLayer = CAReplicatorLayer()
        let numberOfInstances: Int = numberOfLayers
        replicatorLayer.instanceCount = numberOfInstances
        let newTransform = selfShape.transform
        replicatorLayer.instanceTransform = newTransform
        replicatorLayer.addSublayer(inputLayer)
        return replicatorLayer
    }
}

struct TesteCircleVIew: UIViewRepresentable {
    typealias UIViewType = SelfShapeView
    
    func makeUIView(context: Context) -> SelfShapeView {
        let view = SelfShapeView(emotion: .euphoria)
        view.backgroundColor = UIColor.green
        return view
    }
    
    func updateUIView(_ uiView: SelfShapeView, context: Context) {
        
    }
    
    
}


public struct testeBolinhas: View {
    @State var teste: Bool = false
    
    public init() {
        
    }
    
    public var body: some View {
        TesteCircleVIew()
            .frame(width: 300, height: 300)
            .background(.blue)
            .onTapGesture {
                
                withAnimation(.linear(duration: 10)) {
                    teste.toggle()
                }
            }
    }
}

#Preview {
    
    
    testeBolinhas()
    
    
        
        
}

extension UIBezierPath {
    
    convenience init(emotionShape: SelfShape,in rect: CGRect) {
        
        
        let path = SelfShape.path(emotion: emotionShape, rect: rect)
        
        self.init(cgPath: path)
        
    }
}

class SelfShapeView: UIView
{
    override var intrinsicContentSize: CGSize {
        return UIView.layoutFittingCompressedSize
    }
    
    let emotionShape: SelfShape
    var shapeLayer = CAShapeLayer()

    var replicatorLayer: CAReplicatorLayer = CAReplicatorLayer()// {

    lazy var path: CGPath = {
        return UIBezierPath(emotionShape: emotionShape, in: frame).cgPath
    }()
    
    init(emotion: SelfShape) {
        self.emotionShape = emotion
        super.init(frame: .init(x: 0, y: 0, width: 10, height: 10))
        setNeedsLayout()
        setup()
    }
    
    init(emotion: SelfShape, frame: CGRect) {
        self.emotionShape = emotion
        super.init(frame: frame)
        invalidateIntrinsicContentSize()
        setNeedsLayout()
        setup()
    }
    
    func setup() {
        self.layer.backgroundColor = UIColor.red.cgColor
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = emotionShape.lineWidth
        shapeLayer.lineDashPattern = [0.01, emotionShape.lineDashSpacing]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        
        shapeLayer.path = path
        shapeLayer.frame = self.bounds
        shapeLayer.lineWidth = emotionShape.lineWidth
        shapeLayer.lineDashPattern = [0.01, emotionShape.lineDashSpacing]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        layer.addSublayer(replicatorLayer)
        replicatorLayer.addSublayer(shapeLayer)
        
        replicatorLayer.bounds = self.layer.bounds
        
        
        replicatorLayer.instanceCount = 30
        let newTransform = emotionShape.transform
        replicatorLayer.instanceTransform = newTransform
//        replicatorLayer.addSublayer(inputLayer)
//        return replicatorLayer
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + emotionShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 10
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        
        shapeLayer.add(lineDashAnimation, forKey: nil)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    override static var layerClass:AnyClass {
//        return CAReplicatorLayer.self
//    }
//    
//        return self.layer as! CAReplicatorLayer
//    }

//    override func display(_ layer: CALayer) {
//        super.display(layer)
//        print(layer.frame)
//    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
//        print("layoutSubLayers")
        
//        let boundingBox = path.boundingBox
        
        
//        let boundingBoxAspectRatio = boundingBox.width/boundingBox.height
//        let viewAspectRatio = self.bounds.width/self.bounds.height
//
//        let xScaleFactor = self.bounds.width  / boundingBox.width
//        let yScaleFactor = self.bounds.height / boundingBox.height
//        
//
//        let scaleFactor: CGFloat
//        if (boundingBoxAspectRatio > viewAspectRatio) {
//            // Width is limiting factor
//            scaleFactor = self.bounds.width/boundingBox.width
//        } else {
//            // Height is limiting factor
//            scaleFactor = self.bounds.height/boundingBox.height
//        }
//        let scaleTransform = CATransform3DMakeScale(xScaleFactor, yScaleFactor, 1.0)
//        let finalTransform = CATransform3DTranslate(scaleTransform, self.bounds.width/2, self.bounds.height/2, 0)
//        
//        replicatorLayer.frame = self.bounds
//        shapeLayer.transform = scaleTransform
//        
//        
//        var affineTransform = CGAffineTransformMakeScale(scaleFactor, scaleFactor)
//        let transformedPath = path.copy(using: &affineTransform)
//        shapeLayer.path = transformedPath

        
        
//        shapeLayer.frame = self.bounds
//        shapeLayer.transform = CATransform3DMakeTranslation(-self.frame.width, -self.frame.height, 0)
//        
//        CGAffineTransform(translationX: -self.frame.width, y: -self.frame.height)
    }
    
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    

}


//class CircleView: UIView
//{
//
//    let emotionShape: SelfShape
//
//    init(emotion: SelfShape) {
//        self.emotionShape = emotion
//        super.init(frame: .zero)
//
//        self.layer.delegate = self
//
//        setNeedsLayout()
//
//    }
//
//    init(emotion: SelfShape, frame: CGRect) {
//        self.emotionShape = emotion
//        super.init(frame: frame)
//        setNeedsLayout()
//    }
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    var color:UIColor = .black {
//        didSet { self.shapeLayer.fillColor = color.cgColor  }
//    }
//
//    var strokeColor:UIColor = .black {
//        didSet { self.shapeLayer.strokeColor = strokeColor.cgColor  }
//    }
//
//    override static var layerClass:AnyClass {
//        return CAShapeLayer.self
//    }
//
//    private var shapeLayer:CAShapeLayer {
//        return self.layer as! CAShapeLayer
//    }
//
////    override func display(_ layer: CALayer) {
////        super.display(layer)
////        print(layer.frame)
////    }
//
//    override func layoutSublayers(of layer: CALayer) {
//        super.layoutSublayers(of: layer)
//        print("a")
//    }
//
//
//
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        self.shapeLayer.path = SelfShape.path(emotion: emotionShape, rect: self.bounds)
//    }
//
//
//}


enum SelfShape: Int, Identifiable, CaseIterable, Hashable {
    
    var id: Int {
        return self.rawValue
    }
    
    case surprise = 0
    case euphoria = 1
    
    var ogFrame: CGRect {
        switch self {
        case .surprise:
                .init(x: 0, y: 0, width: 975, height: 558)
        case .euphoria:
                .init(x: 0, y: 0, width: 608, height: 608)
        }
    }
    
    var ogGap: CGFloat {
        switch self {
        case .surprise:
            return 37.5
        case .euphoria:
            return 37.5
        }
    }
    
    var ogLineWidth: CGFloat {
        switch self {
        case .surprise:
            return 8.0
        case .euphoria:
            return 7.5
        }
    }
    
    var lineWidth: CGFloat {
        return ogLineWidth * 0.5
    }
    
    var lineDashSpacing: NSNumber {
        return NSNumber(floatLiteral: Double(ogGap * 0.5 + (ogLineWidth * 0.01)))
    }
    
    var lineDashAnimationOffset: NSNumber {
        return NSNumber(floatLiteral: (ogGap+0.5) )
    }
    
    var frame: CGRect {
        return ogFrame.insetBy(dx: ogFrame.width/4, dy: ogFrame.height/4)
    }
    
    var transform: CATransform3D {
        var newTransform: CATransform3D
        switch self {
        case .surprise:
            newTransform = CATransform3DMakeRotation(
                Angle(degrees: 7).radians,
                0, 0, 1
            )
    
            newTransform = CATransform3DScale(
                newTransform,
                0.91, 0.91, 0
    
            )
    
            newTransform = CATransform3DTranslate(
                newTransform,
                0, 0, 0
            )
            
        case .euphoria:
            newTransform = CATransform3DMakeRotation(
                Angle(degrees: -191).radians,
                0, 0, 1
            )
    
            newTransform = CATransform3DScale(
                newTransform,
                0.91, 0.91, 0
    
            )
    
            newTransform = CATransform3DTranslate(
                newTransform,
                0, 0, 0
            )
        }
        
        
        return newTransform
    }
            
    
    
    static func path(emotion: SelfShape, rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        switch emotion {
        case .surprise:
            path.move(to: CGPoint(x: 0.20358*width, y: 0.71124*height))
            path.addCurve(to: CGPoint(x: 0.40717*width, y: 0.35562*height), control1: CGPoint(x: 0.31602*width, y: 0.71124*height), control2: CGPoint(x: 0.40717*width, y: 0.55202*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0), control1: CGPoint(x: 0.40717*width, y: 0.15922*height), control2: CGPoint(x: 0.31602*width, y: 0))
            path.addCurve(to: CGPoint(x: 0, y: 0.35562*height), control1: CGPoint(x: 0.09115*width, y: 0), control2: CGPoint(x: 0, y: 0.15922*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0.71124*height), control1: CGPoint(x: 0, y: 0.55202*height), control2: CGPoint(x: 0.09115*width, y: 0.71124*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.47313*width, y: height))
            path.addCurve(to: CGPoint(x: 0.67672*width, y: 0.64438*height), control1: CGPoint(x: 0.58557*width, y: height), control2: CGPoint(x: 0.67672*width, y: 0.84078*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: 0.28876*height), control1: CGPoint(x: 0.67672*width, y: 0.44798*height), control2: CGPoint(x: 0.58557*width, y: 0.28876*height))
            path.addCurve(to: CGPoint(x: 0.26955*width, y: 0.64438*height), control1: CGPoint(x: 0.36069*width, y: 0.28876*height), control2: CGPoint(x: 0.26955*width, y: 0.44798*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: height), control1: CGPoint(x: 0.26955*width, y: 0.84078*height), control2: CGPoint(x: 0.36069*width, y: height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.79642*width, y: 0.94737*height))
            path.addCurve(to: CGPoint(x: width, y: 0.59175*height), control1: CGPoint(x: 0.90885*width, y: 0.94737*height), control2: CGPoint(x: width, y: 0.78815*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.23613*height), control1: CGPoint(x: width, y: 0.39534*height), control2: CGPoint(x: 0.90885*width, y: 0.23613*height))
            path.addCurve(to: CGPoint(x: 0.59283*width, y: 0.59175*height), control1: CGPoint(x: 0.68398*width, y: 0.23613*height), control2: CGPoint(x: 0.59283*width, y: 0.39534*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.94737*height), control1: CGPoint(x: 0.59283*width, y: 0.78815*height), control2: CGPoint(x: 0.68398*width, y: 0.94737*height))
            path.closeSubpath()
            
            
            
        case .euphoria:
            path.move(to: CGPoint(x: 0.52928*width, y: 0.20446*height))
            path.addLine(to: CGPoint(x: 0.65981*width, y: 0.01936*height))
            path.addCurve(to: CGPoint(x: 0.72525*width, y: 0.04651*height), control1: CGPoint(x: 0.68213*width, y: -0.01231*height), control2: CGPoint(x: 0.73182*width, y: 0.00831*height))
            path.addLine(to: CGPoint(x: 0.68685*width, y: 0.26984*height))
            path.addCurve(to: CGPoint(x: 0.7288*width, y: 0.31185*height), control1: CGPoint(x: 0.68258*width, y: 0.29459*height), control2: CGPoint(x: 0.70408*width, y: 0.31612*height))
            path.addLine(to: CGPoint(x: 0.9518*width, y: 0.27338*height))
            path.addCurve(to: CGPoint(x: 0.97891*width, y: 0.33893*height), control1: CGPoint(x: 0.98994*width, y: 0.2668*height), control2: CGPoint(x: 1.01053*width, y: 0.31657*height))
            path.addLine(to: CGPoint(x: 0.79407*width, y: 0.46965*height))
            path.addCurve(to: CGPoint(x: 0.79407*width, y: 0.52906*height), control1: CGPoint(x: 0.77358*width, y: 0.48414*height), control2: CGPoint(x: 0.77358*width, y: 0.51457*height))
            path.addLine(to: CGPoint(x: 0.97891*width, y: 0.65978*height))
            path.addCurve(to: CGPoint(x: 0.9518*width, y: 0.72532*height), control1: CGPoint(x: 1.01053*width, y: 0.68213*height), control2: CGPoint(x: 0.98994*width, y: 0.7319*height))
            path.addLine(to: CGPoint(x: 0.7288*width, y: 0.68686*height))
            path.addCurve(to: CGPoint(x: 0.68685*width, y: 0.72886*height), control1: CGPoint(x: 0.70408*width, y: 0.68259*height), control2: CGPoint(x: 0.68258*width, y: 0.70411*height))
            path.addLine(to: CGPoint(x: 0.72525*width, y: 0.95219*height))
            path.addCurve(to: CGPoint(x: 0.65981*width, y: 0.97934*height), control1: CGPoint(x: 0.73182*width, y: 0.99038*height), control2: CGPoint(x: 0.68213*width, y: 1.011*height))
            path.addLine(to: CGPoint(x: 0.52928*width, y: 0.79423*height))
            path.addCurve(to: CGPoint(x: 0.46995*width, y: 0.79423*height), control1: CGPoint(x: 0.51481*width, y: 0.77372*height), control2: CGPoint(x: 0.48442*width, y: 0.77372*height))
            path.addLine(to: CGPoint(x: 0.33942*width, y: 0.97934*height))
            path.addCurve(to: CGPoint(x: 0.27397*width, y: 0.95219*height), control1: CGPoint(x: 0.3171*width, y: 1.011*height), control2: CGPoint(x: 0.2674*width, y: 0.99038*height))
            path.addLine(to: CGPoint(x: 0.31238*width, y: 0.72886*height))
            path.addCurve(to: CGPoint(x: 0.27044*width, y: 0.68686*height), control1: CGPoint(x: 0.31665*width, y: 0.70411*height), control2: CGPoint(x: 0.29515*width, y: 0.68259*height))
            path.addLine(to: CGPoint(x: 0.04743*width, y: 0.72532*height))
            path.addCurve(to: CGPoint(x: 0.02032*width, y: 0.65978*height), control1: CGPoint(x: 0.00929*width, y: 0.7319*height), control2: CGPoint(x: -0.0113*width, y: 0.68213*height))
            path.addLine(to: CGPoint(x: 0.20515*width, y: 0.52906*height))
            path.addCurve(to: CGPoint(x: 0.20515*width, y: 0.46965*height), control1: CGPoint(x: 0.22565*width, y: 0.51457*height), control2: CGPoint(x: 0.22565*width, y: 0.48414*height))
            path.addLine(to: CGPoint(x: 0.02032*width, y: 0.33893*height))
            path.addCurve(to: CGPoint(x: 0.04743*width, y: 0.27338*height), control1: CGPoint(x: -0.0113*width, y: 0.31657*height), control2: CGPoint(x: 0.00929*width, y: 0.2668*height))
            path.addLine(to: CGPoint(x: 0.27044*width, y: 0.31185*height))
            path.addCurve(to: CGPoint(x: 0.31238*width, y: 0.26984*height), control1: CGPoint(x: 0.29515*width, y: 0.31612*height), control2: CGPoint(x: 0.31665*width, y: 0.29459*height))
            path.addLine(to: CGPoint(x: 0.27397*width, y: 0.04651*height))
            path.addCurve(to: CGPoint(x: 0.33942*width, y: 0.01936*height), control1: CGPoint(x: 0.2674*width, y: 0.00831*height), control2: CGPoint(x: 0.3171*width, y: -0.01231*height))
            path.addLine(to: CGPoint(x: 0.46995*width, y: 0.20446*height))
            path.addCurve(to: CGPoint(x: 0.52928*width, y: 0.20446*height), control1: CGPoint(x: 0.48442*width, y: 0.22499*height), control2: CGPoint(x: 0.51481*width, y: 0.22499*height))
            path.closeSubpath()
        }
        
        return path
    }
    
}
