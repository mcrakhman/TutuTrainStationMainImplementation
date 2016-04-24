//
//  StationCell.swift
//  TutuTrainStationSearch
//
//  Created by MIKHAIL RAKHMANOV on 13.04.16.
//  Copyright © 2016 No Logo. All rights reserved.
//

import Foundation
import UIKit

class StationCell: UITableViewCell {
	
	@IBOutlet weak var stationTitleLabel: UILabel!
	@IBOutlet weak var stationCityLabel: UILabel!
	@IBOutlet weak var districtTitleLabel: UILabel!
	@IBOutlet weak var regionTitleLabel: UILabel!
	@IBOutlet weak var countryTitleLabel: UILabel!
	
	func configureWithStation (station: Station) {
		stationTitleLabel.text = station.stationTitle
		stationCityLabel.text = station.cityTitle
		districtTitleLabel.text = station.districtTitle
		regionTitleLabel.text = station.regionTitle
		countryTitleLabel.text = station.countryTitle
		
		districtTitleLabel.hidden = station.districtTitle == "" ? true : false
		regionTitleLabel.hidden = station.regionTitle == "" ? true : false
	
		print (self.frame.height)
	}
}