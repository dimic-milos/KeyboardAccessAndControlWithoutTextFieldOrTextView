//
//  ViewController.swift
//  KeyboardAccessAndControlWithoutTextFieldOrTextView
//
//  Created by Dimic Milos on 9/10/18.
//  Copyright © 2018 Dimic Milos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    var autocorrectionType: UITextAutocorrectionType = .no
    
    // MARK: - Override methods
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return action == #selector(resignFirstResponder)
    }
    
    // MARK: - Action methods
    
    @IBAction func showKeyboard(_ sender: UIButton) {
        becomeFirstResponder()
    }
    
    @IBAction func hideKeyboard(_ sender: UIButton) {
        dismissKeyboard()
    }
    
    @objc private func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension ViewController: UIKeyInput{
    
    var hasText: Bool {
        return true
    }
    
    func insertText(_ text: String) {
    }
    
    func deleteBackward() {
    }
}

