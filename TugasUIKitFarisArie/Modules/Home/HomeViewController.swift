//
//  HomeViewController.swift
//  TugasUIKitFarisArie
//
//  Created by yoga arie on 02/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    weak var tableView: UITableView!
    weak var imgBackground: UIImageView!
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
    
    var categories: [Categories] = [
        Categories(select: true, titleName: "All", imageView: "All"),
        Categories(select: false, titleName: "My", imageView: "My"),
        Categories(select: false, titleName: "Anxious", imageView: "Anxious"),
        Categories(select: false, titleName: "Sleep", imageView: "Sleep-1"),
        Categories(select: false, titleName: "Kids", imageView: "Kids")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

       setup()
    }

    func setup() {
        let imgBackground = UIImageView(frame: .zero)
        view.addSubview(imgBackground)
        self.imgBackground = imgBackground
        imgBackground.image = UIImage(named: "homebg")
        imgBackground.contentMode = .scaleAspectFill
        imgBackground.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imgBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imgBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imgBackground.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
        let tableView = UITableView(frame: .zero, style: .grouped)
        view.addSubview(tableView)
        self.tableView = tableView
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
        ])
        tableView.register(PickTableViewCell.self, forCellReuseIdentifier: "pickCell")
        tableView.register(MusicTableViewCell.self, forCellReuseIdentifier: "musicCell")
        tableView.register(SleepTableViewCell.self, forCellReuseIdentifier: "sleepsCell")
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

// MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        default:
            return 0
    }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "pickCell", for: indexPath) as! PickTableViewCell
            
            cell.collectionView.tag = indexPath.section
            cell.collectionView.dataSource = self
            cell.collectionView.delegate = self
            
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as! MusicTableViewCell
            
            cell.imgView.image = UIImage(named: "thumbnail")
            cell.titleLabel.text = "The ocean moon"
            cell.subtitleLabel.text = "Non-stop 8- hour mixes of our most popular sleep audio"
            
            return cell
            
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "sleepsCell", for: indexPath) as! SleepTableViewCell
            
            cell.collectionView.tag = indexPath.section
            cell.collectionView.dataSource = self
            cell.collectionView.delegate = self
            
            return cell
            
        default:
            return UITableViewCell()
        }
        
    }
        
    
}

// MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       
        if section == 0 {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        
        let label = UILabel(frame: .zero)
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 28)
        label.textColor = .white
        label.text = "Sleep Stories"
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
        let subtitleLabel = UILabel(frame: .zero)
        subtitleLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        subtitleLabel.textColor = .white
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 0
        subtitleLabel.text = "Soothing bedtime stories to help you fall into a deep and natural sleep"
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
            subtitleLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 15)
        ])
        
        
        return view
        } else {
            return nil
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 16
        } else {
            return 0.0001
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0001
    }
}

// MARK: - UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0:
            return categories.count
            
        case 2:
            return sleep.count
            
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 0:
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "picksCell", for: indexPath) as! PickCollectionViewCell
            
            let tab = categories[indexPath.row]
            
            cell.imgPick.image = UIImage(named: tab.imageView)
            
            cell.titleLabel.text = tab.titleName
            cell.containerView.backgroundColor = UIColor(rgb: 0x8E97FD)
            
            if tab.select == true {
                cell.containerView.backgroundColor = UIColor(rgb: 0x8E97FD)
                cell.titleLabel.textColor = UIColor.white
            } else {
                
                cell.titleLabel.textColor = UIColor(rgb: 0x98A1BD)
                cell.containerView.backgroundColor = UIColor(rgb: 0x586894)
            }
            
        
        return cell
            
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sleepCellS", for: indexPath) as! SleepCategoryViewCell
            
            var data = sleep[indexPath.row]
            cell.imgMusic.image = UIImage(named: data.image)
            cell.titleLabel.text = data.title
            cell.subtitleLabel.text = data.type
            cell.timeLabel.text = "45 MIN •"
            return cell
            
        default:
            return UICollectionViewCell()
    }
}
}

// MARK: - UICollectionViewDelegateFlowLayout
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView.tag {
        case 0:
            return CGSize(width: 65, height: 95)
        
        case 2:
            return CGSize(width: 177, height: 175)
        
        default:
            return CGSize(width: 0, height: 0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        switch collectionView.tag {
        case 0:
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        
        case 2:
            return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
            
        default:
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch collectionView.tag {
        case 0:
            return 20
        case 2:
            return 10
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch collectionView.tag {
        case 0:
            return 20
        case 2:
            return 10
        default:
            return 0
        }
    }
    
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch collectionView.tag {
        case 0:
        categories[indexPath.row].select = true
        
        for i in categories.indices {
            if i != indexPath.row {
                categories[i].select = false
            }
        }
        collectionView.reloadData()
            
        case 2:
            let name = sleep[indexPath.row].title
            let image = sleep[indexPath.row].image
            
            showDetailViewController(image, name)
            
        default:
            break
        }
    }
}


