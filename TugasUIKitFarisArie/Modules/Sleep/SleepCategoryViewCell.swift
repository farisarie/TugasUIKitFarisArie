//
//  SleepCategoryViewCell.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 02/08/22.
//

import UIKit

class SleepCategoryViewCell: UICollectionViewCell {
    weak var imgMusic: UIImageView!
    weak var titleLabel: UILabel!
    weak var subtitleLabel: UILabel!
    weak var timeLabel: UILabel!
    
    
  
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
        let imgMusic = UIImageView(frame: .zero)
        contentView.addSubview(imgMusic)
        self.imgMusic = imgMusic
        imgMusic.contentMode = .scaleAspectFill
        imgMusic.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgMusic.topAnchor.constraint(equalTo: contentView.topAnchor),
            imgMusic.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imgMusic.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imgMusic.heightAnchor.constraint(equalToConstant: 123)
        ])
        
        let titleLabel = UILabel(frame: .zero)
        contentView.addSubview(titleLabel)
        self.titleLabel = titleLabel
        titleLabel.textColor = .white
        titleLabel.font =  UIFont(name: "HelveticaNeue-Bold", size: 18)
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: imgMusic.bottomAnchor, constant: 11)
        ])
        
        let timeLabel = UILabel(frame: .zero)
        contentView.addSubview(timeLabel)
        self.timeLabel = timeLabel
        timeLabel.textColor = UIColor(rgb: 0x98A1BD)
        timeLabel.font = UIFont(name: "HelveticaNeue", size: 11)
        timeLabel.numberOfLines = 0
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            timeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            timeLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor)
        ])
        
        let subtitleLabel = UILabel(frame: .zero)
        contentView.addSubview(subtitleLabel)
        self.subtitleLabel = subtitleLabel
        subtitleLabel.textColor = UIColor(rgb: 0x98A1BD)
        subtitleLabel.font =  UIFont(name: "HelveticaNeue", size: 11)
        subtitleLabel.numberOfLines = 0
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subtitleLabel.leadingAnchor.constraint(equalTo: timeLabel.trailingAnchor, constant: 2),
            subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor)
        ])
        
        
    }
    
    
}
