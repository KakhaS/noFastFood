//
//  startPage.swift
//  noFastFood
//
//  Created by Kakha Sepashvili on 06.11.22.
//

import UIKit

class StartPage: UIViewController {
    

    
    private let topText: UILabel = {
    let text = UILabel()
    text.text = "Select the date when you give up on Fast Food"
    text.textColor = .lightGray
    text.textAlignment = .center
    text.numberOfLines = 2
    
    return text
}()
    private let dateButton: UIButton = {
        let dateButton = UIButton()
        dateButton.setTitle("Select Date", for: .normal)
        dateButton.setTitleColor(.blue, for: .normal)
        dateButton.setTitleColor(.red, for: .highlighted)
        dateButton.addTarget(self, action: #selector(tappedPicker), for: .touchUpInside)
        
        return dateButton
    }()
    private let datePicker: UIDatePicker = {
        let picker = UIDatePicker()
        picker.date = Date()
        picker.datePickerMode = .date
        picker.locale = .current
        picker.preferredDatePickerStyle = .inline
        picker.tintColor = .gray
        picker.backgroundColor = .lightGray
        picker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
        return picker
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(topText)
        view.addSubview(dateButton)
        topText.anchor(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 120, left: 40, bottom: 0, right: 40))
        dateButton.anchor(top: topText.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 30, left: 40, bottom: 0, right: 40))
        
    
    }
    @objc func tappedPicker() {
        view.addSubview(datePicker)
        
        datePicker.anchor(top: dateButton.bottomAnchor, leading: dateButton.leadingAnchor, trailing: dateButton.trailingAnchor, padding: .init(top: 40, left: 10, bottom: 0, right: 10))
        datePicker.isHidden = false
    }
    
 @objc func dateChanged(sender: UIDatePicker) {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: sender.date)
        if let day = components.day, let month = components.month, let year = components.year {
            topText.text = "Your Selected date is \(day) - \(month) - \(year)"
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.19, execute: {self.datePicker.isHidden = true})
            
        }
    }
        
}
 
