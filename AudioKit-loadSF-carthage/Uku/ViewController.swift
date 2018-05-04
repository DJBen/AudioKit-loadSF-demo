//
//  ViewController.swift
//  Uku
//
//  Created by Sihao Lu on 4/11/18.
//  Copyright © 2018 Sihao. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // This works fine, you will hear a C chord
        // so it means the AudioKit is loaded properly
        let oscillators: [AKOscillator] = [261.63, 329.63, 392.00].map { $0 * 1 }.map { frequency in
            let oscillator = AKOscillator()
            oscillator.frequency = frequency
            oscillator.amplitude = 0.8
            return oscillator
        }

        oscillators[0].amplitude = 1.0

        let mixer = AKMixer(oscillators)
        AudioKit.output = mixer

        try! AudioKit.start()
        oscillators.forEach { $0.start() }
        mixer.start()
    }

    @IBOutlet var buttons: [UIButton]!

    @IBAction func button1Tapped(_ sender: UIButton) {
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

    @IBAction func button2Tapped(_ sender: UIButton) {
    }

    @IBAction func button3Tapped(_ sender: UIButton) {
    }

}

