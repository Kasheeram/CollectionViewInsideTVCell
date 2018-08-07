//
//  AnnouncementTVCell.swift
//  CollectionViewInsideTVCell
//
//  Created by kashee on 07/08/18.
//  Copyright © 2018 kashee. All rights reserved.
//

import UIKit

class AnnouncementTVCell: UITableViewCell {
    
    
    let contentview:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        return view
    }()
    
    let priorityLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "High Priority"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor(red: 250/255, green: 82/255, blue: 90/255, alpha: 0.81)
        return label
    }()
    
    let profileImageView2:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "placeholderIcon"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let roleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Finance"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 1)
        return label
    }()
    
    let postdOnLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "at2:06pm, 13th jun 2018"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        //        label.textColor = Colors.titleRGB
        return label
    }()
    
    let descriptionLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Clear all Hostel dues by 30th Dec 2018. Any queries get in touch."
        label.numberOfLines = 0
        label.sizeToFit()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 0.75)
        return label
    }()
    
    let commentLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "25 Comments"
        //        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = UIColor(red: 33.0/255.0, green: 73.0/255.0, blue: 88.0/255.0, alpha: 1)
        //        label.backgroundColor = .red
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor(red: 37/255, green: 38/255, blue: 94/255, alpha: 0.1)
        
        addAutoLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        shadowforView(button: contentview, color: UIColor(red: 37/255, green: 38/255, blue: 94/255, alpha: 0.1))
//        shadowforView(button: contentview, color: .lightGray)
    }
    
    func addAutoLayout(){
        self.addSubview(contentview)
        
        contentview.addSubview(priorityLabel)
        contentview.addSubview(profileImageView2)
        contentview.addSubview(roleLabel)
        contentview.addSubview(postdOnLabel)
        contentview.addSubview(descriptionLabel)
        contentview.addSubview(commentLabel)
        
        contentview.topAnchor.constraint(equalTo: self.topAnchor,constant:10).isActive = true
        contentview.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant:10).isActive = true
        contentview.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant:-10).isActive = true
        contentview.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant:-10).isActive = true
        
        priorityLabel.topAnchor.constraint(equalTo: contentview.topAnchor).isActive = true
        //        priorityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant:15).isActive = true
        priorityLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        priorityLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        priorityLabel.trailingAnchor.constraint(equalTo: contentview.trailingAnchor).isActive = true
        
        profileImageView2.topAnchor.constraint(equalTo: contentview.topAnchor,constant:20).isActive = true
        profileImageView2.leadingAnchor.constraint(equalTo: contentview.leadingAnchor,constant:10).isActive = true
        profileImageView2.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImageView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        roleLabel.topAnchor.constraint(equalTo: profileImageView2.topAnchor).isActive = true
        roleLabel.leadingAnchor.constraint(equalTo: profileImageView2.trailingAnchor,constant:10).isActive = true
        roleLabel.trailingAnchor.constraint(equalTo: contentview.trailingAnchor).isActive = true
        roleLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        postdOnLabel.topAnchor.constraint(equalTo: roleLabel.bottomAnchor,constant:1).isActive = true
        postdOnLabel.leadingAnchor.constraint(equalTo: roleLabel.leadingAnchor).isActive = true
        postdOnLabel.trailingAnchor.constraint(equalTo: roleLabel.trailingAnchor).isActive = true
        postdOnLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: profileImageView2.bottomAnchor,constant:20).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: profileImageView2.leadingAnchor).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: postdOnLabel.trailingAnchor).isActive = true
        descriptionLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 40).isActive = true
    
        commentLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor,constant:10).isActive = true
        commentLabel.leadingAnchor.constraint(equalTo: profileImageView2.leadingAnchor).isActive = true
        commentLabel.trailingAnchor.constraint(equalTo: contentview.trailingAnchor).isActive = true
        commentLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        commentLabel.bottomAnchor.constraint(equalTo: contentview.bottomAnchor,constant:-10).isActive = true
    }
    
}

func shadowforView(button:UIView,color:UIColor){
    
    button.layer.shadowColor = color.cgColor
    //    button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
    button.layer.shadowOffset = CGSize(width: 0, height: 3)
    button.layer.shadowOpacity = 1.0
    button.layer.shadowRadius = 10.0
    button.layer.masksToBounds = false
    
}
