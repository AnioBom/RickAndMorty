//
//  CharacterDetailsViewController.swift
//  RickAndMorty
//
//  Created by mac on 12/13/22.
//

import UIKit

class CharacterDetailsViewController: UIViewController {
    
    @IBOutlet var characterImageView: UIImageView! {
        didSet {
            characterImageView.layer.cornerRadius = characterImageView.frame.width/2
        }
    }
    @IBOutlet var descriptionLabel: UILabel!
    
    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let topItem = navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
     
    }

}
