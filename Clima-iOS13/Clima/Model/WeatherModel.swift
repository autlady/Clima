//
//  WeatherModel.swift
//  Clima
//
//  Created by  Юлия Григорьева on 21.04.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double

    var temperatureString: String {
        return String(format:"%.1f", temperature)
    }

    var conditionName: String {
        switch conditionId {
        case 200...232:
        return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701, 711, 721, 731, 741, 751, 761:
            return "cloud.fog"
        case 762, 771, 781:
            return "wind"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "cloud"
    }
    }
}
