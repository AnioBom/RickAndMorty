//
//  TableViewCell.swift
//  RickAndMorty
//
//  Created by mac on 11/23/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var characterImageView: UIImageView! {
        didSet {
            characterImageView.contentMode = .scaleAspectFit
            characterImageView.clipsToBounds = true
            characterImageView.layer.cornerRadius = characterImageView.frame.height/2
            characterImageView.backgroundColor = .white
        }
    }
//MARK: - Public methods
    
    func configure(with character: Character?) {
        nameLabel.text = character?.name
        DispatchQueue.global().async {
            guard let stringUrl = character?.image else { return }
            guard let imageUrl = URL(string: stringUrl) else { return }
            guard let imageData = try? Data(contentsOf: imageUrl) else { return }
            DispatchQueue.main.async {
                self.characterImageView.image = UIImage(data: imageData)
            }
        }
    }
}
