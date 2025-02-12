//
//  Categories.swift
//  AmazingWords
//
//  Created by Ronald Smith on 2/12/25.
//
import UIKit
import SwiftUI

struct Categories: View {
    var body: some View {
        VStack {
            Text("CATEGORIES" )
                .foregroundStyle(.black)
                .bold()
                .font(.title)
                .padding()
            
            HStack {
                
                Button() {
                    
                } label: {
                    Image("MSUAppleButton")
                }
                
                Button() {
                    
                } label: {
                    Image("DetroitButton")
                }
                
            }
            HStack {
                Button() {
                    
                }label: {
                    Image("FootballButton")
                }
                
                Button() {
                    
                }label: {
                    Image("MusicButton")
                }
            }
        }
    }
}
    
    #Preview {
        Categories()
    }
    
//    class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
//
//        @IBOutlet weak var categoryPicker: UIPickerView!
//        
//        let categories = ["Apple Academy", "Detroit", "Sports", "Music"]
//        
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            categoryPicker.delegate = self
//            categoryPicker.dataSource = self
//        }
//        
//        func numberOfComponents(in pickerView: UIPickerView) -> Int {
//            return 1
//        }
//        
//        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//            return categories.count
//        }
//        
//        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//            return categories[row]
//        }
//        
//        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//            let selectedCategory = categories[row]
//            print("Selected category: \(selectedCategory)")
//        }
//        
//    }
