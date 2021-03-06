//
//  HomeViewController.swift
//  TeesasApp
//
//  Created by Tes on 21/03/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "teesasLogo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let whatsappImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "whatsapp")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let enquireLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Enquire Now"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = UIColor.systemBackground
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.showsVerticalScrollIndicator = false
        return scroll
    }()
    
    let contentView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    let profileView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "brain.head.profile")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Tes"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let greetingsLabel: UILabel = {
        let label = UILabel()
        label.text = "Good Morning"
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        return label
    }()
    
    var buyNowButton: GreenButton = {
        let button = GreenButton()
        button.setTitle("Buy Now", for: .normal)
        button.layer.cornerRadius = 13
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    
    let ibibioView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let biniView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let ijawView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let viewAllView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        return view
    }()
    
    let geniusView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let geniusLabel: UILabel = {
        let label = UILabel()
        label.text = "Share with friends"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let geniusSubtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Bring your friend along on this exciting \nlearning experience with Teesas!"
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        return label
    }()
    
    var geniusButton: GreenButton = {
        let button = GreenButton()
        button.setTitle("Buy Now", for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    let ebookView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let ebookLabel: UILabel = {
        let label = UILabel()
        label.text = "E-Book"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ebookSubtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Deepen your knowledge! Gain access to \nexciting books and learning materials."
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        return label
    }()
    
    let chartImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "chart.line.uptrend.xyaxis.circle.fill")
        imageView.tintColor = .green
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let performanceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Performance Reports"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let picksLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Teesas Learning Picks for Tes"
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 30
        let collView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collView.backgroundColor = .systemBackground
        collView.dataSource = self
        collView.delegate = self
        collView.showsVerticalScrollIndicator = false
        collView.translatesAutoresizingMaskIntoConstraints = false
        collView.register(PicksCollectionViewCell.self, forCellWithReuseIdentifier: PicksCollectionViewCell().identifier)
        return collView
    }()
    
    let placeView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let shareView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let teesasLabel: UILabel = {
        let label = UILabel()
        label.text = "Teesas Place"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let teesasSubtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Know more about how we are making \nan impact on the future of learning."
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        return label
    }()
    
    let picksImageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "map.circle.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let shareLabel: UILabel = {
        let label = UILabel()
        label.text = "Share with friends"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let shareSubtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Bring your friend along on this exciting \nlearning experience with Teesas!"
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 3
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = true
        constraintViews()
        
    }
    
    func constraintViews() {
        view.addSubview(logoImageView)
        view.addSubview(whatsappImageView)
        view.addSubview(enquireLabel)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(profileView)
        profileView.addSubview(profileImageView)
        profileView.addSubview(greetingsLabel)
        profileView.addSubview(userNameLabel)
        profileView.addSubview(buyNowButton)
        contentView.addSubview(ibibioView)
        contentView.addSubview(biniView)
        contentView.addSubview(ijawView)
        contentView.addSubview(viewAllView)
        contentView.addSubview(geniusView)
        geniusView.addSubview(geniusLabel)
        geniusView.addSubview(geniusSubtitleLabel)
        geniusView.addSubview(geniusButton)
        contentView.addSubview(ebookView)
        ebookView.addSubview(ebookLabel)
        ebookView.addSubview(ebookSubtitleLabel)
        contentView.addSubview(chartImageView)
        contentView.addSubview(performanceLabel)
        contentView.addSubview(picksLabel)
        contentView.addSubview(collectionView)
        contentView.addSubview(placeView)
        contentView.addSubview(shareView)
        placeView.addSubview(teesasLabel)
        placeView.addSubview(teesasSubtitleLabel)
        shareView.addSubview(shareLabel)
        shareView.addSubview(shareSubtitleLabel)
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logoImageView.heightAnchor.constraint(equalToConstant: 40),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            
            whatsappImageView.topAnchor.constraint(equalTo: logoImageView.topAnchor),
            whatsappImageView.trailingAnchor.constraint(equalTo: enquireLabel.leadingAnchor, constant: -10),
            whatsappImageView.heightAnchor.constraint(equalToConstant: 40),
            whatsappImageView.widthAnchor.constraint(equalToConstant: 40),
            
            enquireLabel.topAnchor.constraint(equalTo: logoImageView.topAnchor, constant: 10),
            enquireLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 5),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 1300),
            
            profileView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            profileView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            profileView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            profileView.heightAnchor.constraint(equalToConstant: 130),
            
            profileImageView.centerYAnchor.constraint(equalTo: profileView.centerYAnchor),
            profileImageView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 10),
            profileImageView.widthAnchor.constraint(equalToConstant: 80),
            profileImageView.heightAnchor.constraint(equalToConstant: 100),
            
            greetingsLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor, constant: 20),
            greetingsLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 20),
            
            userNameLabel.bottomAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: -20),
            userNameLabel.leadingAnchor.constraint(equalTo: greetingsLabel.leadingAnchor),
            
            buyNowButton.widthAnchor.constraint(equalToConstant: 100),
            buyNowButton.heightAnchor.constraint(equalToConstant: 30),
            buyNowButton.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -20),
            buyNowButton.topAnchor.constraint(equalTo: greetingsLabel.topAnchor, constant: -0),
            
            ibibioView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 8),
            ibibioView.trailingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: -10),
            ibibioView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ibibioView.heightAnchor.constraint(equalToConstant: 120),
            
            biniView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 8),
            biniView.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 10),
            biniView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            biniView.heightAnchor.constraint(equalToConstant: 120),
            
            ijawView.topAnchor.constraint(equalTo: ibibioView.bottomAnchor, constant: 20),
            ijawView.trailingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: -10),
            ijawView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ijawView.heightAnchor.constraint(equalToConstant: 120),
            
            viewAllView.topAnchor.constraint(equalTo: biniView.bottomAnchor, constant: 20),
            viewAllView.leadingAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 10),
            viewAllView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            viewAllView.heightAnchor.constraint(equalToConstant: 120),
            
            geniusView.topAnchor.constraint(equalTo: viewAllView.bottomAnchor, constant: 20),
            geniusView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            geniusView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            geniusView.heightAnchor.constraint(equalToConstant: 170),
            
            geniusLabel.topAnchor.constraint(equalTo: geniusView.topAnchor, constant: 40),
            geniusLabel.leadingAnchor.constraint(equalTo: geniusView.leadingAnchor, constant: 50),
            
            geniusSubtitleLabel.topAnchor.constraint(equalTo: geniusLabel.bottomAnchor, constant: 10),
            geniusSubtitleLabel.leadingAnchor.constraint(equalTo: geniusView.leadingAnchor, constant: 50),
            
            geniusButton.bottomAnchor.constraint(equalTo: geniusView.bottomAnchor, constant: -20),
            geniusButton.centerXAnchor.constraint(equalTo: geniusView.centerXAnchor),
            geniusButton.widthAnchor.constraint(equalTo: geniusView.widthAnchor, multiplier: 0.8),
            geniusButton.heightAnchor.constraint(equalToConstant: 20),
            
            ebookView.topAnchor.constraint(equalTo: geniusView.bottomAnchor, constant: 20),
            ebookView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            ebookView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            ebookView.heightAnchor.constraint(equalToConstant: 100),
            
            ebookLabel.topAnchor.constraint(equalTo: ebookView.topAnchor, constant: 20),
            ebookLabel.leadingAnchor.constraint(equalTo: ebookView.leadingAnchor, constant: 50),
            
            ebookSubtitleLabel.topAnchor.constraint(equalTo: ebookLabel.bottomAnchor, constant: 10),
            ebookSubtitleLabel.leadingAnchor.constraint(equalTo: ebookView.leadingAnchor, constant: 50),
            
            chartImageView.topAnchor.constraint(equalTo: ebookView.bottomAnchor, constant: 30),
            chartImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            chartImageView.heightAnchor.constraint(equalToConstant: 40),
            chartImageView.widthAnchor.constraint(equalToConstant: 40),
            
            performanceLabel.topAnchor.constraint(equalTo: chartImageView.topAnchor, constant: 10),
            performanceLabel.leadingAnchor.constraint(equalTo: chartImageView.trailingAnchor, constant: 10),
            
            picksLabel.topAnchor.constraint(equalTo: chartImageView.bottomAnchor, constant: 30),
            picksLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            
            collectionView.topAnchor.constraint(equalTo: picksLabel.bottomAnchor, constant: 20),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            collectionView.heightAnchor.constraint(equalToConstant: 150),
            
            placeView.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 20),
            placeView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            placeView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            placeView.heightAnchor.constraint(equalToConstant: 100),
            
            shareView.topAnchor.constraint(equalTo: placeView.bottomAnchor, constant: 20),
            shareView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            shareView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            shareView.heightAnchor.constraint(equalToConstant: 100),
            
            teesasLabel.topAnchor.constraint(equalTo: placeView.topAnchor, constant: 20),
            teesasLabel.leadingAnchor.constraint(equalTo: placeView.leadingAnchor, constant: 50),
            
            teesasSubtitleLabel.topAnchor.constraint(equalTo: teesasLabel.bottomAnchor, constant: 10),
            teesasSubtitleLabel.leadingAnchor.constraint(equalTo: placeView.leadingAnchor, constant: 50),
            
            shareLabel.topAnchor.constraint(equalTo: shareView.topAnchor, constant: 20),
            shareLabel.leadingAnchor.constraint(equalTo: shareView.leadingAnchor, constant: 50),
            
            shareSubtitleLabel.topAnchor.constraint(equalTo: shareLabel.bottomAnchor, constant: 10),
            shareSubtitleLabel.leadingAnchor.constraint(equalTo: shareView.leadingAnchor, constant: 50),
        ])
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 140)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PicksCollectionViewCell().identifier, for: indexPath) as? PicksCollectionViewCell else {return UICollectionViewCell() }
        cell.backgroundColor = .green
        cell.layer.cornerRadius = 20
        cell.layer.masksToBounds = true
        return cell
    }
}
