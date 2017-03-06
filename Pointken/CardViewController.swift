//
//  ViewController.swift
//  Pointken
//
//  Created by Gregory Sapienza on 3/2/17.
//  Copyright © 2017 Token. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    // MARK: - Private

    /// Background confetti view.
    private let confettiView = ConfettiView()
    
    /// Margin for verical spacing between items.
    fileprivate let lineMargin: CGFloat = 20
    
    /// Main collection view.
    private lazy var cardCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = self.lineMargin
        layout.minimumInteritemSpacing = 0
        
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.clear
        
        return collectionView
    }()
    
    /// Data source for collection view.
    fileprivate let points = ["1", "2", "3", "5", "8", "13", "20", "40", "☕️"]
    
    /// Currently selected cell.
    fileprivate var selectedCell = UICollectionViewCell()
    
    /// Original frame of selected cell.
    fileprivate var selectedCellPreviousPosition = CGPoint.zero
    
    // MARK: - Public

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(colorLiteralRed: 20/255, green: 20/255, blue: 20/255, alpha: 1)
        
        if var navigationController = navigationController {
            configureNavigationController(navigationController: &navigationController)
        }
        
        //---Logo image---//
        
        let logoImage: UIImage = TMLogo.imageOfLogo(CGSize(width: 80.0, height: 15.0), resizing: .aspectFit)
        
        let imageView = UIImageView(image: logoImage)
        imageView.contentMode = .center
        imageView.frame = CGRect(x: 0, y: 0, width: 120, height: 33)
        
        //---Navigation title---//
        
        navigationItem.titleView = imageView
        
        //---Confetti View---//
        
        view.addSubview(confettiView)
        
        confettiView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraints([NSLayoutConstraint(item: confettiView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0),
                             NSLayoutConstraint(item: confettiView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
                             NSLayoutConstraint(item: confettiView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0),
                             NSLayoutConstraint(item: confettiView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
            ])
        
        view.addSubview(cardCollectionView)
        
        //---Card Collection View---//

        cardCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addConstraints([NSLayoutConstraint(item: cardCollectionView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 64),
                             NSLayoutConstraint(item: cardCollectionView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
                             NSLayoutConstraint(item: cardCollectionView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0),
                             NSLayoutConstraint(item: cardCollectionView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
            ])
        
        cardCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "\(UICollectionViewCell.self)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if !confettiView.isActive() { //If confetti is not active then start it.
            confettiView.startConfetti()
        }
    }
    
    // MARK: - Actions
    
    /// Action when back button is tapped after card has been selected.
    func onBackButton() {
        navigationItem.leftBarButtonItem = nil
        
        UIView.animate(withDuration: 0.3, animations: {
            self.cardCollectionView.alpha = 1
            self.cardCollectionView.transform = CGAffineTransform.identity
            self.selectedCell.transform = CGAffineTransform.identity
            self.selectedCell.frame.origin = self.view.convert(self.selectedCellPreviousPosition, from: self.cardCollectionView)
        }) { (Bool) in
            self.cardCollectionView.addSubview(self.selectedCell)
            self.selectedCell.frame.origin = self.selectedCellPreviousPosition
        }
    }
}

// MARK: - UICollectionViewDataSource
extension CardViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return points.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(UICollectionViewCell.self)", for: indexPath)
        
        cell.contentView.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        cell.contentView.layer.shadowColor = UIColor.black.cgColor
        cell.contentView.layer.shadowRadius = 1
        cell.contentView.layer.shadowOpacity = 0.1
        cell.contentView.layer.cornerRadius = 4
        cell.contentView.backgroundColor = UIColor.white
        
        let point = points[indexPath.item]
        
        if point != "☕️" {
            let label = UILabel(frame: cell.bounds)
            label.textAlignment = .center
            label.font = UIFont(name: "Acta-Book", size: 64) ?? nil
            label.adjustsFontSizeToFitWidth = true
            label.minimumScaleFactor = 0.5
            label.textColor = UIColor(colorLiteralRed: 174/255, green: 124/255, blue: 88/255, alpha: 1)
            label.text = point
            cell.contentView.addSubview(label)
        } else {
            let imageView = UIImageView(frame: cell.bounds)
            imageView.image = #imageLiteral(resourceName: "Coffee")
            imageView.contentMode = .scaleAspectFit
            cell.contentView.addSubview(imageView)
        }
        
        return cell
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
extension CardViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width / 3.8, height: collectionView.bounds.height / 4)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        let top = (collectionView.bounds.height - (((collectionView.bounds.height / 4) + lineMargin) * 3)) / 2
        return UIEdgeInsetsMake(top, lineMargin, 0, lineMargin)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) else {
            return
        }
        
        selectedCell = cell
        selectedCellPreviousPosition = cell.frame.origin

        view.addSubview(cell)
        
        cell.frame = view.convert(cell.frame, from: collectionView)
        
        UIView.animate(withDuration: 0.3, animations: { 
            collectionView.alpha = 0
            collectionView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            cell.center = self.view.center
            cell.transform = CGAffineTransform(scaleX: 3, y: 3)
        }) { (Bool) in
            
        }
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "backButton"), style: .plain, target: self, action: #selector(onBackButton))
        navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        
    }
}

// MARK: - Private configurators
private extension CardViewController {
    
    /// Configures navigation controller properties.
    ///
    /// - Parameter navigationController: Navigation controller for which to configure properties.
    func configureNavigationController(navigationController: inout UINavigationController) {
        
        //Transparent navigation bar.
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = true
    }
}

