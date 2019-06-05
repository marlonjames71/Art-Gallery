//
//  Painting.swift
//  ArtGallery
//
//  Created by Marlon Raskin on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
	let image: UIImage
	var isLiked: Bool
	
	init(image named: UIImage, isLiked: Bool = true) {
		self.image = named
		self.isLiked = isLiked
	}
}


