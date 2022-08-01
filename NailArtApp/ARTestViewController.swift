//
//  ARTestViewController.swift
//  NailArtApp
//
//  Created by Emma Carpenetti on 7/16/22.
//

import UIKit
import RealityKit

class ARTestViewController: UIViewController { //class for the fourth tab
    
    @IBOutlet var arView: ARView! // connect ARView to a label
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nailAnchor = try! NailScene.loadNails()  // load the NailScene
        
        arView.scene.anchors.append(nailAnchor)
        
        
    }


}

