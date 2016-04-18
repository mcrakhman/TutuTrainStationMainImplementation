//
//  UITableViewExtension.swift
//  TutuTrainStationSearch
//
//  Created by MIKHAIL RAKHMANOV on 18.04.16.
//  Copyright © 2016 No Logo. All rights reserved.
//

import UIKit

extension UITableView {
	func scrollToTop() {
		self.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
	}
}