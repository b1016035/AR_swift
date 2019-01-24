//
//  ViewController.swift
//  Education For AR
//
//  Created by Tatsuya Matsuno on 2019/01/22.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {
    @IBOutlet weak var myArSceneView: ARSCNView!
    
    override var prefersStatusBarHidden: Bool { return true }
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation { return .slide }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mySession = ARSession()
        myArSceneView.session = mySession
        
        myArSceneView.showsStatistics = true
        myArSceneView.debugOptions = ARSCNDebugOptions.showFeaturePoints
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let configuration = ARWorldTrackingConfiguration()
        myArSceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        myArSceneView.session.pause()
    }
}

