//
//  OnBoardingViewController.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 02/08/22.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    weak var startButton: PrimaryButton!
    weak var titleLabel: UILabel!
    weak var subtitleLabel: UILabel!
    weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    func setupViews() {
        let imgView = UIImageView(frame: .zero)
        view.addSubview(imgView)
        self.imgView = imgView
        imgView.image = UIImage(named: "Splash Screen")
        imgView.contentMode = .scaleAspectFill
        imgView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imgView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imgView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imgView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
        let titleLabel = UILabel(frame: .zero)
        view.addSubview(titleLabel)
        self.titleLabel = titleLabel
        titleLabel.text = "Welcome to Sleep"
        titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        titleLabel.textColor = .white
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 144)
        ])
        
        let subtitleLabel = UILabel(frame: .zero)
        view.addSubview(subtitleLabel)
        self.subtitleLabel = subtitleLabel
        subtitleLabel.text = "Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep."
        subtitleLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        subtitleLabel.textColor = .white
        subtitleLabel.numberOfLines = 0
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15)
        ])
        
        let startButton = PrimaryButton()
        view.addSubview(startButton)
        self.startButton = startButton
        startButton.setTitle("Get Started", for: .normal)
        startButton.setTitleColor(UIColor.white, for: .normal)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            startButton.heightAnchor.constraint(equalToConstant: 63)
        ])
        
        if #available(iOS 11.0, *) {
            startButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -94).isActive = true
        }
        startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -94).isActive = true
        startButton.addTarget(self, action: #selector(self.startButtonTapped(_:)), for: .touchUpInside)
    }
    
    @objc func startButtonTapped(_ sender: Any){
        showTabBarController()
    }
}
