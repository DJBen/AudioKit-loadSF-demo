//
//  ViewController.swift
//  AudioKit-play
//
//  Created by Sihao Lu on 5/3/18.
//  Copyright © 2018 Sihao. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sampler = AKAppleSampler()
        do {
            try sampler.loadMelodicSoundFont("GeneralUserGS", preset: 0)
            AudioKit.output = sampler
            try AudioKit.start()
            try sampler.play(noteNumber: 50)
        } catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

