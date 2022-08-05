//
//  DetailViewController.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 02/08/22.
//

import UIKit

class DetailViewController: UIViewController {

    var image: String?
    var titleView: String?
    
    weak var scrollView: UIScrollView!
    weak var posterImg: UIImageView!
    weak var titleLabel: UILabel!
    weak var genreLabel: UILabel!
    weak var descLabel: UILabel!
    weak var listeningLabel: UILabel!
    weak var favoritesLabel: UILabel!
    weak var loveImage: UIImageView!
    weak var musicImage: UIImageView!
    weak var stripView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    func setup(){
        view.backgroundColor = UIColor(rgb: 0x03174C)
        
        let backButton = UIBarButtonItem(image: UIImage(named: "btn_back")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(self.backButtonTapped(_:)))
        navigationItem.leftBarButtonItem = backButton
        
        let scrollView = UIScrollView(frame: .zero)
        view.addSubview(scrollView)
        self.scrollView = scrollView
        scrollView.showsVerticalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        
        let contentView = UIView(frame: .zero)
        scrollView.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        let posterImg = UIImageView(frame: .zero)
        contentView.addSubview(posterImg)
        self.posterImg = posterImg
        posterImg.image = UIImage(named: image ?? "")
        posterImg.contentMode = .scaleAspectFill
        posterImg.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            posterImg.topAnchor.constraint(equalTo: view.topAnchor),
            posterImg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            posterImg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            posterImg.heightAnchor.constraint(equalToConstant: 290)
        ])
        
        let titleLabel = UILabel(frame: .zero)
        contentView.addSubview(titleLabel)
        self.titleLabel = titleLabel
        titleLabel.numberOfLines = 0
        titleLabel.text = titleView ?? ""
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 34)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: posterImg.bottomAnchor, constant: 30)
        ])
        
        let genreLabel = UILabel(frame: .zero)
        contentView.addSubview(genreLabel)
        self.genreLabel = genreLabel
        genreLabel.numberOfLines = 0
        genreLabel.text = "45 MIN • SLEEP MUSIC"
        genreLabel.textColor = UIColor(rgb: 0x98A1BD)
        genreLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 14)
        genreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            genreLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            genreLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            genreLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15)
        ])
        
        let descLabel = UILabel(frame: .zero)
        contentView.addSubview(descLabel)
        self.descLabel = descLabel
        descLabel.numberOfLines = 0
        descLabel.text = "Ease the mind into a restful night’s sleep with these deep, amblent tones."
        descLabel.textColor = UIColor(rgb: 0x98A1BD)
        descLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        descLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            descLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -80),
            descLabel.topAnchor.constraint(equalTo: genreLabel.bottomAnchor, constant: 20)
        ])
        
        let loveStackView = UIStackView()
        loveStackView.axis = .horizontal
        loveStackView.spacing = 10
        loveStackView.alignment = .fill
        loveStackView.distribution = .fill
        contentView.addSubview(loveStackView)
        loveStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loveStackView.topAnchor.constraint(equalTo: descLabel.bottomAnchor, constant: 30),
            loveStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        ])
        
        let loveImage = UIImageView(frame: .zero)
        loveStackView.addArrangedSubview(loveImage)
        self.loveImage = loveImage
        loveImage.image = UIImage(named: "love")
        loveImage.contentMode = .scaleAspectFill
        loveImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loveImage.widthAnchor.constraint(equalToConstant: 18),
            loveImage.heightAnchor.constraint(equalToConstant: 18)
        ])
        
        let favoritesLabel = UILabel(frame: .zero)
        loveStackView.addArrangedSubview(favoritesLabel)
        self.favoritesLabel = favoritesLabel
        favoritesLabel.text = "24.234 Favorits"
        favoritesLabel.textColor = .white
        favoritesLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 14)
        
        
        let musicStackView = UIStackView()
        musicStackView.axis = .horizontal
        musicStackView.spacing = 10
        musicStackView.alignment = .fill
        musicStackView.distribution = .fill
        contentView.addSubview(musicStackView)
        musicStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            musicStackView.topAnchor.constraint(equalTo: descLabel.bottomAnchor, constant: 30),
            musicStackView.leadingAnchor.constraint(equalTo: loveStackView.trailingAnchor, constant: 20),
        ])
        
        let musicImage = UIImageView(frame: .zero)
        musicStackView.addArrangedSubview(musicImage)
        self.musicImage = musicImage
        musicImage.image = UIImage(named: "music")
        musicImage.contentMode = .scaleAspectFill
        musicImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            musicImage.widthAnchor.constraint(equalToConstant: 18),
            musicImage.heightAnchor.constraint(equalToConstant: 18)
        ])
        
        let listeningLabel = UILabel(frame: .zero)
        musicStackView.addArrangedSubview(listeningLabel)
        self.listeningLabel = listeningLabel
        listeningLabel.text = "34.234 Lestening"
        listeningLabel.textColor = .white
        listeningLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 14)
        
        let stripView = UIView(frame: .zero)
        contentView.addSubview(stripView)
        self.stripView = stripView
        stripView.backgroundColor = UIColor(rgb: 0x98A1BD)
        stripView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stripView.heightAnchor.constraint(equalToConstant: 1),
            stripView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stripView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stripView.topAnchor.constraint(equalTo: loveStackView.bottomAnchor, constant: 30)
        ])
    }
        
    }
    

    

extension UIViewController {
    func showDetailViewController(_ image: String, _ title: String) {
        let viewController = DetailViewController()
        viewController.image = image
        viewController.titleView = title
        navigationController?.pushViewController(viewController, animated: true)
    }
}
