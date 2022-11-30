//
//  GameScene.swift
//  teste
//
//  Created by mcor on 25/11/22.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    var player = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        print("carregou")
        addBackground()
    }
    
    func addBackground() {
//        let background = SKSpriteNode(imageNamed: "Jogo2")
//        self.addChild(background)
//        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        
        player = SKSpriteNode(imageNamed: "Jogo2")
        player.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
//        player.position = CGPoint(x: 0, y: 0)
        player.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        print("x: \(player.position.x), y: \(player.position.y)")
        
        self.addChild(player)

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            player.position.x = location.x
            player.position.y = location.y
            
//            player.position = location
            
            print("x: \(player.position.x), y: \(player.position.y)")

        }
    }
}
