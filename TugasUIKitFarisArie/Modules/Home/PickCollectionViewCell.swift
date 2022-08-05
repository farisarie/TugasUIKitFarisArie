//
//  PickCollectionViewCell.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 03/08/22.
//

import UIKit

class PickCollectionViewCell: UICollectionViewCell {
    weak var imgPick: UIImageView!
    weak var titleLabel: UILabel!
    weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    func setupViews(){
        backgroundColor = .clear
        
        let containerView = UIView(frame: .zero)
        contentView.addSubview(containerView)
        self.containerView = containerView
        containerView.tintColor = UIColor(rgb: 0x8E97FD)
        containerView.layer.cornerRadius = 21
        containerView.layer.masksToBounds = true
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.heightAnchor.constraint(equalToConstant: 65),
            containerView.widthAnchor.constraint(equalToConstant: 65),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0)
        ])
        
        let imgPick = UIImageView(frame: .zero)
        contentView.addSubview(imgPick)
        self.imgPick = imgPick
        imgPick.contentMode = .scaleAspectFill
        imgPick.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgPick.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            imgPick.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imgPick.heightAnchor.constraint(equalToConstant: 25),
            imgPick.widthAnchor.constraint(equalToConstant: 25),
        ])
        
        let titleLabel = UILabel(frame: .zero)
        contentView.addSubview(titleLabel)
        self.titleLabel = titleLabel
        titleLabel.textColor = .white
        titleLabel.text = "All"
        titleLabel.font = UIFont(name: "HelveticaNeue", size: 16)
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 5)
        ])
    }
    
}
