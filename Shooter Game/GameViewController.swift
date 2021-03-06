//
//  GameViewController.swift
//  Shooter Game
//
//  Created by Ryan Doiron on 2017-01-01.
//  Copyright © 2017 doir0008@algonquinlive.com. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            // if let scene = SKScene(fileNamed: "MainMenu") {
            if let scene = MainMenu(fileNamed: "MainMenu") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            // if let scene = SKScene(fileNamed: "MainMenu") {
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit (crop) the window
                scene.scaleMode = .aspectFill
                // Set the scale mode to scale to fit the window
                // scene.scaleMode = .aspectFit
                
                // Present the scene
                view.presentScene(scene, transition: SKTransition.crossFade(withDuration: 1.0))
            }
        }

    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
