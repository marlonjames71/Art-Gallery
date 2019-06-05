//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Marlon Raskin on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
	func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

	var painting: Painting? {
		didSet {
			updateViews()
		}
	}
	
	func updateViews() {
		if let painting = painting {
			paintingImageView.image = painting.image
			if painting.isLiked  == true {
				likeDislikeButton.setTitle("Unlike", for: .normal)
			}
		}
	}
	
	@IBOutlet var paintingImageView: UIImageView!
	@IBOutlet var likeDislikeButton: UIButton!
	weak var delegate: PaintingTableViewCellDelegate?
	
	@IBAction func likeButtonTapped(_ sender: UIButton) {
		delegate?.likeButtonWasTapped(on: self)
	}
	
}
