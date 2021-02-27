//
//  MediaPlayerViewController.swift
//  CollegeProject
//
//  Created by Dhaval Vekariya on 14/02/21.
//

import UIKit
import AVFoundation

class MediaPlayerViewController: UIViewController {

    @IBOutlet weak var playerView: UIView!
    
    let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "babaYaga", ofType: "mp4")!))
    var layer  : AVPlayerLayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        layer = AVPlayerLayer(player: player)
        
        
        layer.videoGravity = .resizeAspect
        playerView.layer.addSublayer(layer)
        player.volume = 0
        player.play()
        
        //playerView.addSubview(<#T##view: UIView##UIView#>)
    }
    
    override func viewWillLayoutSubviews() {
        playerView.frame = view.bounds
       
        layer.frame = playerView.bounds
       
    }
    

   

}
