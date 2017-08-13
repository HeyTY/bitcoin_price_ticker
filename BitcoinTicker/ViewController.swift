//
//  ViewController.swift
//  BitcoinTicker
//
//  Created by Ty Le on 12/08/17.
//  Copyright © Ty Le. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    let currencySymbolArray = ["$", "R$", "$", "¥", "€", "£", "$", "Rp", "₪", "₹", "¥", "$", "kr", "$", "zł", "lei", "₽", "kr", "$", "$", "R"]
    var finalURL = ""
    var currencySelected = ""

    //Pre-setup IBOutlets
    @IBOutlet weak var bitcoinPriceLabel: UILabel!
    @IBOutlet weak var currencyPicker: UIPickerView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
       
    }

    
    //TODO: Place your 3 UIPickerView delegate methods here
    
    
    // How many columns in picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    // How many rows in picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyArray.count
    }
    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyArray[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){

        
        finalURL = baseURL + currencyArray[row]
        currencySelected = currencySymbolArray[row]
        getBtcData(url: finalURL)
        
    }
    
    
    
    
    

    
    
    //MARK: - Networking
    /***************************************************************/
    
        func getBtcData(url: String) {
    
            Alamofire.request(url, method: .get)
                .responseJSON { response in
                    if response.result.isSuccess {
    
                        print("Sucess! Got the Bitcoin data")
                        let btcJSON : JSON = JSON(response.result.value!)
    
                        self.updateBtcData(json: btcJSON)
    
                    } else {
                        print("Error: \(response.result.error)")
                        self.bitcoinPriceLabel.text = "Connection Issues"
                    }
            }
            
        }
    
    
    
    //MARK: - JSON Parse
    /***************************************************************/
    
    
    func updateBtcData(json : JSON){
        if let priceResult = json["ask"].double{
            bitcoinPriceLabel.text = "\(currencySelected)\(priceResult)"
        
        } else {
            bitcoinPriceLabel.text = "Price Unavailable"
        }
    }

    





}

