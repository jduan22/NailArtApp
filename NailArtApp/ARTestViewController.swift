//
//  ARTestViewController.swift
//  NailArtApp
//
//  Created by Emma Carpenetti on 7/16/22.
//

import UIKit
import RealityKit

class ARTestViewController: UIViewController { //class for the fourth tab
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nailAnchor = try! NailScene.loadNails()
        
        arView.scene.anchors.append(nailAnchor)
        
        
    }


}

