//
//  BillInputView.swift
//  Tip Calculator
//
//  Created by AHMET HAKAN YILDIRIM on 5.10.2023.
//

import UIKit

class BillInputView: UIView {
    
     init() {
         super.init(frame: .zero)
         layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        backgroundColor = .gray
    }
}
