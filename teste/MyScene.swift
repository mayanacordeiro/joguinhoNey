//
//  MyScene.swift
//  teste
//
//  Created by mcor on 29/11/22.
//

import GameplayKit
import SpriteKit

class MyScene: SKScene {
    //private var imagemNeymar: [SKSpriteNode] = []
    let selector = SKSpriteNode(imageNamed: "click")
    let background = SKSpriteNode(imageNamed: "bg 1")
    let item = SKSpriteNode(imageNamed: "neymar1")
    let randomX = Float.random(in:-1800..<1800)
    let randomY = Float.random(in:-1000..<1000)
    override func didMove(to view: SKView) {
        
        selector.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        selector.size = CGSize(width: 100, height: 100)
        selector.zPosition = 3
        addChild(selector)
        background.name = "background"
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        //background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        background.zPosition = -1
        addChild(background)
        // appendImages()
        // placeImages()
        createImages()
    }
    
    func createImages() {
        
        
       // for i in 1...11 {
            item.position =  CGPoint(x: CGFloat(randomX), y: CGFloat(randomY))
            item.size = CGSize(width: 400, height: 400)
            item.zPosition = 1
            item.name = "neymar"
            addChild(item)
        }
    
//    func verifyClick() {
//
//    }
        
   // }
    
    //    func appendImages() {
    //        for i in 1...11 {
    //            imagemNeymar.append(SKSpriteNode(imageNamed: "//neymar\(i)"))
    //        }
    //    }
    //
    //    func placeImages(){
    //        var image = SKSpriteNode(imageNamed: "neymar1")
    //        let randomX = Int.random(in: -1840...1840)
    //        let randomY = Int.random(in: -1200...1200)
    //        image.position = CGPoint(x: randomX, y: randomY)
    //        image.size = CGSize(width: 400, height: 280)
    //        //image.physicsBody = SKPhysicsBody.init(circleOfRadius: 100)
    //        image.name = "neymar"
    //
    //        addChild(image)
    //
    //    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            background.position.x = location.x
            background.position.y = location.y 

//            item.position.x = location.x + CGFloat(randomX)
//            item.position.y = location.y + CGFloat(randomY)

            //            player.position = location
            
            print("x: \(background.position.x), y: \(background.position.y)")
            
        }
        
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            background.position.x = location.x
            background.position.y = location.y

//            item.position.x = location.x
//            item.position.y = location.y
        }
        
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        guard let touch = touches.first else {return}
//        let location = touch.location(in: self)
//        let tappedNodes = nodes(at: location)
//        guard let tapped = tappedNodes.first else {return}
//            if tapped.name == "background" {
//                print("background")
//            } else if tapped.name == "neymar"{
//                print("neymar")
//            }
//    }
//    override func pressesBegan(_ presses: Set<UIPress>, with event: UIPressesEvent?) {
//        for press in presses {
//            if press.type == .select {
//                if press.name == "background" {
//                   print("background")
//               } else if tapped.name == "neymar"{
//                   print("neymar")
//               }
//            }
//            
//        }
//    }
}
