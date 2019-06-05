//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Marlon Raskin on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController {

	
	// MARK: Outlets and Properties
	@IBOutlet var paintingListTableView: UITableView!
	let paintingController = PaintingController()
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		paintingListTableView.delegate = self
		paintingListTableView.dataSource = self
    }
}

extension PaintingListViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return paintingController.paintings.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintCell", for: indexPath) as?
			PaintingTableViewCell else { return UITableViewCell() }
		
		let painting = paintingController.paintings[indexPath.row]
		cell.painting = painting
		
		return cell
	}
}

extension PaintingListViewController: PaintingTableViewCellDelegate {
	func likeButtonWasTapped(on cell: PaintingTableViewCell) {
		guard let liked = cell.painting?.isLiked else { return }
		
	}
}
