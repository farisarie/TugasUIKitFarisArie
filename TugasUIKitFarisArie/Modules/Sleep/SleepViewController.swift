//
//  SleepViewController.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 02/08/22.
//

import UIKit

class SleepViewController: UIViewController {
    
    var sleep: [Sleep] = [
        Sleep(image: "dummy", title: "Night Island", type: "SLEEP MUSIC"),
        Sleep(image: "dummy1", title: "Sweet Sleep", type: "SLEEP MUSIC"),
        Sleep(image: "dummy2", title: "Good Night", type: "SLEEP MUSIC"),
        Sleep(image: "dummy3", title: "Moon Clouds", type: "SLEEP MUSIC"),
        Sleep(image: "dummy", title: "Night Island", type: "SLEEP MUSIC"),
        Sleep(image: "dummy1", title: "Sweet Sleep", type: "SLEEP MUSIC"),
        Sleep(image: "dummy2", title: "Good Night", type: "SLEEP MUSIC"),
        Sleep(image: "dummy3", title: "Moon Clouds", type: "SLEEP MUSIC"),
        Sleep(image: "dummy", title: "Night Island", type: "SLEEP MUSIC"),
        Sleep(image: "dummy1", title: "Sweet Sleep", type: "SLEEP MUSIC"),
        Sleep(image: "dummy2", title: "Good Night", type: "SLEEP MUSIC"),
        Sleep(image: "dummy3", title: "Moon Clouds", type: "SLEEP MUSIC")
    ]
    
    weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func setup() {
        navigationItem.title = "Sleep Music"
        view.backgroundColor = UIColor(rgb: 0x03174C)
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionView)
        self.collectionView = collectionView
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        collectionView.backgroundColor = .clear
        collectionView.register(SleepCategoryViewCell.self, forCellWithReuseIdentifier: "sleepCell")
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
}

// MARK: - UICollectionViewDataSource
extension SleepViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sleep.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sleepCell", for: indexPath) as! SleepCategoryViewCell
        var data = sleep[indexPath.row]
        cell.imgMusic.image = UIImage(named: data.image)
        cell.titleLabel.text = data.title
        cell.subtitleLabel.text = data.type
        cell.timeLabel.text = "45 MIN •"
        
        return cell
    }
    
    
}

// MARK: - UICollectionViewDelegateFlowLayout
extension SleepViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 177, height: 175)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}

extension SleepViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let name = sleep[indexPath.row].title
        let image = sleep[indexPath.row].image
        
        showDetailViewController(image, name)
    }
}
