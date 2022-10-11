//
//  InitialVC.swift
//  FirstProject
//
//  Created by Сергей Мирошниченко on 01.10.2022.
//

import Foundation
import UIKit


class InitialVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var crownImageView: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        segmentControl.addTarget(self, action: #selector(changeImage), for: .valueChanged)
        actionButton.addTarget(self, action: #selector(didTapActionButton), for: .touchUpInside)
        opacitySlider.addTarget(self, action: #selector(changeOpacity), for: .valueChanged)
    }
    
    
    @objc func changeImage() {
        crownImageView.image = segmentControl.selectedSegmentIndex == 0 ? UIImage(systemName: "crown.fill") :
        UIImage(systemName: "crown")
    }
    
    @objc func didTapActionButton() {
        crownImageView.transform = crownImageView.transform.rotated(by: .pi)
    }
    
    @objc func changeOpacity() {
        crownImageView.alpha = CGFloat(opacitySlider.value)
    }
    
}

