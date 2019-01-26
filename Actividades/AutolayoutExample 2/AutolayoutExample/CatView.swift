//
//  CatView.swift
//  AutolayoutExample
//
//  Created by Axel Cervantes on 28/09/18.
//  Copyright © 2018 Axel Cervantes. All rights reserved.
//

import UIKit

class CatView: UIView {
    
    let imageView: UIImageView = {
        let iv = UIImageView(frame: .zero)
        iv.image = UIImage(named: "tacocat")!
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAutoLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAutoLayout()
    }
    
    func setupAutoLayout(){
        backgroundColor = UIColor(named: "IntenseRed")!
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        
    }
}
















