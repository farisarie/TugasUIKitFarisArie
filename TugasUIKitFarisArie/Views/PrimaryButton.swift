//
//  PrimaryButton.swift
//  TugasUIKitFaris
//
//  Created by yoga arie on 28/07/22.
//

import UIKit


class PrimaryButton: UIButton {

    convenience init() {
        self.init(type: .system)
        setup()
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    
    func setup(){
        backgroundColor = UIColor(rgb: 0x8E97FD)
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
    
        layer.cornerRadius = 31
        layer.masksToBounds = true
        
    }
    

}
