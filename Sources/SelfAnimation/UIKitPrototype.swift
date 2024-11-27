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
    
    let isAsyncRendered: Bool
    
    
    
    public init(isAsyncRendered: Bool) {
        
        self.isAsyncRendered = isAsyncRendered
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
        replicated.drawsAsynchronously = isAsyncRendered
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





class SelfShapeView: UIView
{
//    override var intrinsicContentSize: CGSize {
//        return .init(width: 300, height: 300)
//    }
    
    let emotionShape: SelfShape
    var shapeLayer = CAShapeLayer()

    var replicatorLayer: CAReplicatorLayer = CAReplicatorLayer()// {

    lazy var path: CGPath = {
        return UIBezierPath(emotionShape: emotionShape, in: frame).cgPath
    }()
    
    init(emotion: SelfShape) {
        self.emotionShape = emotion
        super.init(frame: .init(x: 0, y: 0, width: 400, height: 400))
        setNeedsLayout()
        setup()
    }
    
    init(emotion: SelfShape, frame: CGRect) {
        self.emotionShape = emotion
        super.init(frame: .init(x: 0, y: 0, width: 400, height: 400))
//        invalidateIntrinsicContentSize()
        setNeedsLayout()
        setup()
    }
    
    
    
    func setup() {
        
 
        
        
        
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
        
        replicatorLayer.instanceDelay = -0.25
        
        replicatorLayer.instanceCount = 30
        let newTransform = emotionShape.transform
        replicatorLayer.instanceTransform = newTransform
//        replicatorLayer.addSublayer(inputLayer)
//        return replicatorLayer
        
        
        
        
        rotationAnimation()
        
    }
    
    func runAnimation() {
        
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        shapeLayer.opacity = 0
        
        CATransaction.commit()
        
        let opacityAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.opacity))
        opacityAnimation.fromValue = 0
        opacityAnimation.toValue = 1
        opacityAnimation.duration = 5
        opacityAnimation.fillMode = .forwards
        opacityAnimation.isRemovedOnCompletion = false
        opacityAnimation.speed = 1
        
        
        shapeLayer.add(opacityAnimation, forKey: nil)
        
        
        
    }
    
    func createKeyframeAnimation() {
        let animation = CAKeyframeAnimation(keyPath: "position")
        
        // Scale the view while animating
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.fromValue = 1.0
        scaleAnimation.toValue = 0.5
        scaleAnimation.duration = 2.0
        
        // Group both animations
        let groupAnimation = CAAnimationGroup()
        groupAnimation.animations = [scaleAnimation]
        groupAnimation.duration = 2.0
        
        // Apply the animations to the UIView
        shapeLayer.add(groupAnimation, forKey: "positionAndScale")
    }
    
    func transitionOutAnimation() {
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 2.0
        animationGroup.repeatCount = 3
        animationGroup.fillMode = .forwards

        let rotateAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.opacity))
        rotateAnimation.fromValue = 1.0
        rotateAnimation.toValue = 0.0
                                               
        animationGroup.animations = [/*scaleAnimation*/ rotateAnimation]

        shapeLayer.add(animationGroup, forKey: nil)
    }
    
    
    
    func rotationAnimation() {
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
    
    func transformLayers() {
        let boundingBox = path.boundingBox
        
        
        let boundingBoxAspectRatio = boundingBox.width/boundingBox.height
        let viewAspectRatio = self.bounds.width/self.bounds.height

        let xScaleFactor = self.bounds.width  / boundingBox.width
        let yScaleFactor = self.bounds.height / boundingBox.height
        

        let scaleFactor: CGFloat
        if (boundingBoxAspectRatio > viewAspectRatio) {
            // Width is limiting factor
            scaleFactor = self.bounds.width/boundingBox.width
        } else {
            // Height is limiting factor
            scaleFactor = self.bounds.height/boundingBox.height
        }
        let scaleTransform = CATransform3DMakeScale(xScaleFactor, yScaleFactor, 1.0)
        let finalTransform = CATransform3DTranslate(scaleTransform, self.bounds.width/2, self.bounds.height/2, 0)
        
        replicatorLayer.frame = self.bounds
        shapeLayer.transform = scaleTransform
        
        
//        var affineTransform = CGAffineTransformMakeScale(scaleFactor, scaleFactor)
//        let transformedPath = path.copy(using: &affineTransform)
//        shapeLayer.path = transformedPath
        
//        replicatorLayer.bounds = self.bounds
//        replicatorLayer.position = self.center
//        shapeLayer.bounds = replicatorLayer.bounds
//        shapeLayer.position = self.center
    }
    
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)


    }
    
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        transformLayers()
    }
    

}


class CircleView: UIView
{

    let emotionShape: SelfShape

    init(emotion: SelfShape) {
        self.emotionShape = emotion
        super.init(frame: .zero)

        self.layer.delegate = self

        setNeedsLayout()

    }

    init(emotion: SelfShape, frame: CGRect) {
        self.emotionShape = emotion
        super.init(frame: frame)
        setNeedsLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var color:UIColor = .black {
        didSet { self.shapeLayer.fillColor = color.cgColor  }
    }

    var strokeColor:UIColor = .black {
        didSet { self.shapeLayer.strokeColor = strokeColor.cgColor  }
    }

    override static var layerClass:AnyClass {
        return CAShapeLayer.self
    }

    private var shapeLayer:CAShapeLayer {
        return self.layer as! CAShapeLayer
    }

//    override func display(_ layer: CALayer) {
//        super.display(layer)
//        print(layer.frame)
//    }

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        print("a")
    }




    override func layoutSubviews() {
        super.layoutSubviews()
        self.shapeLayer.path = SelfShape.path(emotion: emotionShape, rect: self.bounds)
    }


}



//
//#Preview {
//    
//    let vc = CALayerTesting()
//    return vc
//    
//}
