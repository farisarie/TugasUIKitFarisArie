//
//  MusicTableViewCell.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 03/08/22.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    weak var imgView: UIImageView!
    weak var buttonMusic: UIButton!
    weak var titleLabel: UILabel!
    weak var subtitleLabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupViews(){
        backgroundColor = .clear
        selectionStyle = .none
        
        let imgView = UIImageView(frame: .zero)
        contentView.addSubview(imgView)
        self.imgView = imgView
        imgView.contentMode = .scaleAspectFill
        imgView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            imgView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            imgView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imgView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imgView.heightAnchor.constraint(equalToConstant: 233)
        ])
        
        let titleLabel = UILabel(frame: .zero)
        contentView.addSubview(titleLabel)
        self.titleLabel = titleLabel
        titleLabel.textColor = UIColor(rgb: 0xFFE7BF)
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont(name: "HelveticaNeue", size: 24)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30)
        ])
        
        let subtitleLabel = UILabel(frame: .zero)
        contentView.addSubview(subtitleLabel)
        self.subtitleLabel = subtitleLabel
        subtitleLabel.textColor = UIColor(rgb: 0xF9F9FF)
        subtitleLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        subtitleLabel.numberOfLines = 0
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 31),
            subtitleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            subtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 90),
            subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -90)
        ])
        
        let buttonMusic = UIButton(type: .system)
        contentView.addSubview(buttonMusic)
        self.buttonMusic = buttonMusic
        buttonMusic.setTitle("MUSIC", for: .normal)
        buttonMusic.setTitleColor(UIColor(rgb: 0x3F414E), for: .normal)
        buttonMusic.backgroundColor = UIColor(rgb: 0xEBEAEC)
        buttonMusic.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 12)
        buttonMusic.layer.cornerRadius = 16
        buttonMusic.layer.masksToBounds = true
        buttonMusic.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonMusic.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            buttonMusic.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            buttonMusic.widthAnchor.constraint(equalToConstant: 70),
            buttonMusic.heightAnchor.constraint(equalToConstant: 35)
        ])
    }

}
