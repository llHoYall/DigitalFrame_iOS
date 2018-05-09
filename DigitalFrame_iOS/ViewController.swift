//
//  ViewController.swift
//  DigitalFrame_iOS
//
//  Created by hoya kim on 09/05/2018.
//  Copyright © 2018 ChameleoN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var imgView: UIImageView!
	@IBOutlet weak var toggleBtn: UIButton!
	@IBOutlet weak var slider: UISlider!
	@IBOutlet weak var speedLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let images = [
			UIImage(named: "img1.jpg")!,
			UIImage(named: "img2.jpg")!,
			UIImage(named: "img3.jpg")!,
			UIImage(named: "img4.jpg")!,
			UIImage(named: "img5.jpg")!,
			UIImage(named: "img6.jpg")!,
			UIImage(named: "img7.jpg")!,
			UIImage(named: "img8.jpg")!,
			UIImage(named: "img9.jpg")!,
			UIImage(named: "img10.jpg")!,
			UIImage(named: "img11.jpg")!,
			UIImage(named: "img12.jpg")!,
			UIImage(named: "img13.jpg")!,
			UIImage(named: "img14.jpg")!,
			UIImage(named: "img15.jpg")!
		]
		imgView.animationImages = images
		imgView.animationDuration = Double(slider.value)
		speedLabel.text = String(Int(slider.value))
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction func sliderAction(_ sender: Any) {
		imgView.animationDuration = Double(slider.value)
		imgView.startAnimating()
		speedLabel.text = String(Int(slider.value))
		toggleBtn.setTitle("Stop", for: UIControlState.normal)
	}
	
	@IBAction func startAction(_ sender: Any) {
		if imgView.isAnimating {
			imgView.stopAnimating()
			toggleBtn.setTitle("Start", for: UIControlState.normal)
		} else {
			imgView.startAnimating()
			toggleBtn.setTitle("Stop", for: UIControlState.normal)
		}
	}
}
