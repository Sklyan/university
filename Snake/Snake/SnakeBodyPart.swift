//
//  SnakeBodyPart.swift
//  Snake
//
//  Created by Евгений Склянов on 14.06.2020.
//  Copyright © 2020 Евгений Склянов. All rights reserved.
//

import UIKit
import SpriteKit

class SnakeBodyPart: SKShapeNode {
    
    let diameter:CGFloat = 10.0
    
    init(atPoint point: CGPoint) {
        super.init()
        path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: diameter, height: diameter)).cgPath
        self.physicsBody = SKPhysicsBody(circleOfRadius: diameter - 4, center: CGPoint(x: 5, y: 5))
        self.physicsBody?.isDynamic = true
        self.physicsBody?.categoryBitMask = CollisionCategories.Snake
        fillColor = .green
        strokeColor = .green
        self.position = position
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
