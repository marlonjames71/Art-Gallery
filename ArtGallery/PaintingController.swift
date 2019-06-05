//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Marlon Raskin on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
	
	var paintings: [Painting] = []
	
	func loadPaintsFromAssets() {
		for painting in 0...12 {
			let paintingName = "Image\(painting)"
			guard let unwrappedPainting = UIImage(named: paintingName) else { return }
			let newPainting = Painting(image: unwrappedPainting)
			paintings.append(newPainting)
		}
	}
	
	init() {
		loadPaintsFromAssets()
	}
	
	func toggleIsLiked(for painting: Painting) {
		if painting.isLiked == true {
			painting.isLiked = true
		} else {
			painting.isLiked = false
		}
	}
}
