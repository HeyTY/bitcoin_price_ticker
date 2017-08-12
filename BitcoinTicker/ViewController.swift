//
//  ViewController.swift
//  BitcoinTicker
//
//  Created by Ty Le on 12/08/17.
//  Copyright © Ty Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    var finalURL = ""

    //Pre-setup IBOutlets
    @IBOutlet weak var bitcoinPriceLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    //TODO: Place your 3 UIPickerView delegate methods here
    
    
    

    
    
    
//    
//    //MARK: - Networking
//    /***************************************************************/
//    
//    func getWeatherData(url: String, parameters: [String : String]) {
//        
//        Alamofire.request(url, method: .get, parameters: parameters)
//            .responseJSON { response in
//                if response.result.isSuccess {
//                    
//                    print("Sucess! Got the weather data")
//                    let weatherJSON : JSON = JSON(response.result.value)
//                    
//                    self.updateWeatherData(json: weatherJSON)
//                    
//                } else {
//                    print("Error: \(response.result.error)")
//                    self.cityLabel.text = "Connection Issues"
//                }
//        }
//        
//    }
//    
//    
//    
//    
//    
//    //MARK: - JSON Parsing
//    /***************************************************************/
//    
//    func updateWeatherData(json : JSON) {
//        
//        let tempResult = json["main"]["temp"].double
//        
//        weatherData.temperature = Int(round(tempResult!) - 273.15)
//        weatherData.city = json["name"].stringValue
//        weatherData.condition = json["weather"][0]["id"].intValue
//        weatherData.weatherIconName = weatherData.updateWeatherIcon(condition: weatherData.condition)
//        
//        updateUIWithWeatherData()
//    }
//    




}

