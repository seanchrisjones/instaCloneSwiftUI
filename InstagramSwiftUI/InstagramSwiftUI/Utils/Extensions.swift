//
//  Extensions.swift
//  InstagramSwiftUI
//
//  Created by Sean Jones on 12/8/21.
//

import Foundation
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

