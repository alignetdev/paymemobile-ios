//
//  ViewController.swift
//  SampleSwift
//
//  Created by Miguel Angel on 11/27/18.
//  Copyright © 2018 Miguel Tomairo. All rights reserved.
//

import UIKit
import Payme

class ViewController: UIViewController {
    
    @IBOutlet weak var settingIdentifier: UITextField!
    @IBOutlet weak var settingLocale: UITextField!
    @IBOutlet weak var settingBrands: UITextField!
    @IBOutlet weak var operationNumber: UITextField!
    @IBOutlet weak var operationAmount: UITextField!
    @IBOutlet weak var operationCurrencyCode: UITextField!
    @IBOutlet weak var operationCurrencySymbol: UITextField!
    @IBOutlet weak var operationProduct: UITextField!
    @IBOutlet weak var featuresWalletUserCode: UITextField!
    @IBOutlet weak var featuresPlanQuota: UITextField!
    
    var settingsIndentifierPicker: UIPickerView!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDissmiskeyboard()
        createPickerSettingsIndentifier()
        setDefaultIdentifier(value: self.settingIdentifier.text!)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setDefaultFieldsData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Private methods
    func signatureKey(merchantId:String) -> String {
        let identifiers = getIdentifiers()
        for i in identifiers {
            if i.key == merchantId {
                return i.value
            }
        }
        return ""
    }
    
    private func getIdentifiers() -> [(key: String, value: String)] {
        var items = [(key: String, value: String)]()
        
        items.append((key: "8204",value:"SYbpPEwdKxErVzt@66458456"))
        items.append((key: "8203",value:"SYbpPEwdKxErVzt@66458456"))
        items.append((key: "8202",value:"SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7970", value: "KErJVvRqEdMexGMfR=6562287655"))
        items.append((key: "11011",value:"moCXdRhwxUgWfHZph56NYEAkuvUqgWtq"))
        items.append((key: "11012",value:"moCXdRhwxUgWfHZph56NYEAkuvUqgWtq"))
        items.append((key: "11013",value:"moCXdRhwxUgWfHZph56NYEAkuvUqgWtq"))
        items.append((key: "8090",value:"cvTQfqfckeVvxfmsq@4494953255"))
        items.append((key: "9123", value: "cvTQfqfckeVvxfmsq@4494953255"))
        items.append((key: "9614", value: "PeEdsYxYskKQxvbzVDy.744337825956"))
        items.append((key: "11001", value: "moCXdRhwxUgWfHZph56NYEAkuvUqgWtq"))
        items.append((key: "11002", value: "moCXdRhwxUgWfHZph56NYEAkuvUqgWtq"))
        items.append((key: "9011", value: "GzLQaTabhVBEcuE?68844429"))
        items.append((key: "9012", value: "CrPVxNwSwtCnjGeKAeD!796864532638"))
        items.append((key: "8825", value: "UNxurvmxBpknFZJc?924469299"))
        items.append((key: "9010", value: "SYMgYGvRaBKmruqSPLA?355937798259"))
        items.append((key: "8823", value: "sQCWWvAKMCvTzujmHkP*859592222476"))
        items.append((key: "8824", value: "tSJmStewBWFDgYVvMC.56478264967"))
        items.append((key: "18825", value: "D0d4Xx0EsKZ0d7OHVpHuw9UhB9wpwa6B"))
        items.append((key: "9125", value: "DHUzg0NJmYU+tQ9ESZvECShrCTPKYj44"))
        items.append((key: "9124", value: "0uodYouA21pXgc87RWBRH7VkRRG3Ka2W"))
        items.append((key: "9126", value: "DHUzg0NJmYU+tQ9ESZvECShrCTPKYj44"))
        items.append((key: "9124", value: "0uodYouA21pXgc87RWBRH7VkRRG3Ka2W"))
        items.append((key: "8727", value: "jkqLZCcteVfDTsFqFEw!343292953997"))
        items.append((key: "8728", value: "kqLZCcteVfDTsFqFEw!343292953997"))
        items.append((key: "7885", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "9213", value: "JavierPerezSignature2018$$"))
        items.append((key: "7314", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7320", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7330", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7521", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7522", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7523", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7773", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "7774", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "8493", value: "SYbpPEwdKxErVzt@66458456]"))
        items.append((key: "8494", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "8495", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "8496", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "8497", value: "SYbpPEwdKxErVzt@66458456"))
        items.append((key: "9250", value: "us6B6o78HqoL53TM7l2IbP0saON6jMZd"))
        items.append((key: "9251", value: "UVfIDAsHyOcdnRS5PD1DpGpVbFFKd1w9"))
        items.append((key: "9234", value: "JavierPerezSignature2018$$"))
        items.append((key: "8478", value: "MXSTawuWhPYNVcDZS*5259686457"))
        
        return items
    }
    
    func setDefaultFieldsData(){
        let operationNumberStr = randomNumberWith(digits:6)
        settingLocale.text = "es_PE"
        settingIdentifier.text = String(describing: self.getIdentifiers()[0].key)
        settingBrands.text = "VISA,AMEX,DINC,BCRI,TJRI,CMR,MSCD"
        operationNumber.text = "\(operationNumberStr)"
        operationAmount.text = "99.55"
        operationCurrencyCode.text = "PEN"
        operationCurrencySymbol.text = "S/."
        operationProduct.text = "Televisor"
        featuresWalletUserCode.text = "miguel.tomairo@alignet.com"
        featuresPlanQuota.text = "1"
        operationNumber.keyboardType = .numberPad
        operationAmount.keyboardType = .decimalPad
        featuresPlanQuota.keyboardType = .numberPad
        settingIdentifier.keyboardType = .numberPad
        
    }
    
    func addDissmiskeyboard(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissableViewTapped))
        view.addGestureRecognizer(tap)
    }
    
    func setDefaultIdentifier(value:String){
        let identifiers = self.getIdentifiers()
        var selectedRow = 0
        for (i, data) in identifiers.enumerated() {
            if data.key == value {
                selectedRow = i
            }
        }
        settingsIndentifierPicker.selectRow(selectedRow, inComponent: 0, animated: true)
    }
    
    @objc func dismissableViewTapped() {
        view.endEditing(true)
    }
    
    func randomNumberWith(digits:Int) -> Int {
        let min = Int(pow(Double(10), Double(digits-1))) - 1
        let max = Int(pow(Double(10), Double(digits))) - 1
        return Int(Range(uncheckedBounds: (min, max)))
    }
    
    // MARK: - IBAction
    
    @IBAction func btnStartProcessPayment(_ sender: UIButton) {
        let sb = UIStoryboard (name: "MainPaymeApi", bundle: Bundle(for: PayController.self))
        let vcStartPayment = sb.instantiateViewController(
            withIdentifier: "PayController") as! PayController
        vcStartPayment.paymeProtocol = self
        //        self.present(vcStartPayment, animated: true, completion: nil)
        self.navigationController?.pushViewController(vcStartPayment, animated: true)
    }
    
    func sendWallet(merchant: String)-> String{
        
        if merchant == "9123" || merchant == "8090" {
            return ""
        }else {
            return self.featuresWalletUserCode.text!
        }
    }
    
}

// MARK: - PaymeMobileDelegate methods
extension ViewController: PaymeMobileDelegate {
    
    func dismissed() {
        print("Hacer algo ....")
    }
    
    var setEnviroment: Enviroment {
        return .sandbox
    }
    
    func setParamsMerchant() -> ModelMerchant {
        
        let modelMerchantSettings = ModelMerchantSettings(
            locale: self.settingLocale.text!,
            identifier: self.settingIdentifier.text!,
            brands: self.settingBrands.text!.components(separatedBy: ","),
            signatureKey: self.signatureKey(merchantId: self.settingIdentifier.text!),
            responseType: ResponseType.extended
        )
        
        let modelMerchantFeatures = ModelMerchantFeatures(
            wallet: ModelMerchantFeaturesWallet(
                userCommerce: self.sendWallet(merchant: self.settingIdentifier.text!)
            ),
            reserved: [
                ModelMerchantFeaturesReserved(name: "reserved1", value: "1"),
                ModelMerchantFeaturesReserved(name: "reserved2", value: "2"),
                ModelMerchantFeaturesReserved(name: "reserved3", value: "3")
            ],
            planQuota: (self.featuresPlanQuota.text != "0" ? true : false)
        )
        
        let modelMerchantDataOperation = ModelMerchantDataOperation(
            operationNumber: self.operationNumber.text!,
            amount: self.operationAmount.text!,
            currency: ModelMerchantDataOperationCurrency(
                code: self.operationCurrencyCode.text!,
                symbol: self.operationCurrencySymbol.text!
            ),
            productDescription: self.operationProduct.text!
        )
        
        let modelMerchantDataPerson = ModelMerchantDataPerson(
            firstName: "Javier",
            lastName: "Perez",
            email: "jperez@alignet.com",
            address: "Av casimiro Ulloa 333",
            zip: "000",
            city: "Lima",
            state: "Lima",
            country: "Peru",
            phone: "998888444"
        )
        
        let modelMerchantData = ModelMerchantData(
            operation: modelMerchantDataOperation,
            shipping: modelMerchantDataPerson,
            billing: modelMerchantDataPerson,
            customer: modelMerchantDataPerson,
            signature: ""
        )
        
        let merchant = ModelMerchant(
            data: modelMerchantData,
            settings: modelMerchantSettings,
            features: modelMerchantFeatures
        )
        
        return merchant
    }
    
    func getResponsePay(response: ModelPayment?) {
        if let response = response {
            print("========================================= PAYMENT_RESPONSE =======================================")
            print("messageCode: ", response.messageCode)
            print("message: ", response.message)
            print("success: ", response.success)
            if let paymentData = response.payment {
                print("payment.accepted: ", paymentData.accepted)
                print("payment.resultCode: ", paymentData.resultCode)
                print("payment.resultMessage: ", paymentData.resultMessage)
                print("payment.lastPan: ", paymentData.lastPan ?? "-")
                print("payment.bin: ", paymentData.bin ?? "-")
                print("payment.brand: ", paymentData.brand ?? "-")
                print("payment.date: ", paymentData.date ?? "-")
                print("payment.hour: ", paymentData.hour ?? "-")
                print("payment.errorCode: ", paymentData.errorCode ?? "-")
                print("payment.errorMessage: ", paymentData.errorMessage ?? "-")
                print("payment.operationNumber: ", paymentData.operationNumber ?? "-")
                print("payment.authorizationCode: ", paymentData.authorizationCode ?? "-")
                print("payment.authorizationResult: ", paymentData.authorizationResult ?? "-")
                
            }
            print("========================================= PAYMENT_RESPONSE =======================================")
            
        } else {
            print("response: ", "another error")
        }
    }
    
}

// MARK: - UIPickerViewDelegate methods
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    @objc func donePickerSettingsIndentifier(){
        let row = settingsIndentifierPicker.selectedRow(inComponent: 0)
        settingIdentifier.text = "\(String(describing: self.getIdentifiers()[row].key))"
        settingIdentifier.resignFirstResponder()
    }
    
    func createPickerSettingsIndentifier(){
        settingsIndentifierPicker = UIPickerView()
        settingsIndentifierPicker.delegate = self
        settingsIndentifierPicker.dataSource  = self
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = false
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Terminar", style: UIBarButtonItem.Style.plain,
                                         target: self, action: #selector(self.donePickerSettingsIndentifier))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace,
                                          target: nil, action: nil)
        toolBar.setItems([spaceButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        settingIdentifier.inputView = settingsIndentifierPicker
        settingIdentifier.inputAccessoryView = toolBar
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return self.getIdentifiers().count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        settingIdentifier.text = "\(String(describing: self.getIdentifiers()[row].key))"
        self.settingIdentifier.keyboardType = .numberPad
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.getIdentifiers()[row].key
    }
}

extension Int {
    init(_ range: Range<Int> ) {
        let delta = range.lowerBound < 0 ? abs(range.lowerBound) : 0
        let min = UInt32(range.lowerBound + delta)
        let max = UInt32(range.upperBound   + delta)
        self.init(Int(min + arc4random_uniform(max - min)) - delta)
    }
}


