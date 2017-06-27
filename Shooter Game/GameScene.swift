//
//  GameScene.swift
//  Shooter Game
//
//  Created by Ryan Doiron on 2017-01-01.
//  Copyright © 2017 doir0008@algonquinlive.com. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    

    
    override func didMove(to view: SKView) {
// used to modify sprite size
//        let myShip:SKSpriteNode = self.childNode(withName: "ship") as! SKSpriteNode
//        myShip.xScale = 0.25
//        myShip.yScale = 0.25
        
        // add a sprite programmatically
        let player:SKSpriteNode = SKSpriteNode(imageNamed: "player_frame1")
        // sprite must be a child of something
        self.addChild(player)
        // adjust the position of the sprite up and right
        player.position = CGPoint(x: 100, y: 100)
        
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
