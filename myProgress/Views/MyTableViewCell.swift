//
//  MyTableViewCell.swift
//  myProgress
//
//  Created by 김찬교 on 2023/03/10.
//

import UIKit
import RingPieChart

final class MyTableViewCell: UITableViewCell {
    
    
    
    //MARK: - 멤버 저장속성 구현
    // 멤버가 변할때마다 자동으로 업데이트 되도록 구현 didSet(속성 감시자) ⭐️
    var todo: Todo? {
        didSet {
            guard let todo = todo else { return }
//            mainImageView.image = member.memberImage
            titleLabel.text = todo.title
            memoLabel.text = todo.memo
        }
    }
    
    //MARK: - UI구현
    
//    let mainImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let memoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 10)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let stackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.distribution  = .fill
        sv.alignment = .fill
        sv.spacing = 5
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //MARK: - 생성자 셋팅
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        setupStackView() // 재정의 했기때문에 super를 써줘야함.
    }
    
    func setupStackView() {
//        self.addSubview(mainImageView)

        // 셀 위에 스택뷰 올리기
        self.addSubview(stackView)
       

        // 스택뷰 위에 뷰들 올리기
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(memoLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: - 오토레이아웃 셋팅
    // 오토레이아웃 정하는 정확한 시점
    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        self.mainImageView.clipsToBounds = true
//        self.mainImageView.layer.cornerRadius = self.mainImageView.frame.width / 2
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
//            mainImageView.heightAnchor.constraint(equalToConstant: 40),
//            mainImageView.widthAnchor.constraint(equalToConstant: 40),
//            mainImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
//            mainImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
            
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
//            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            stackView.topAnchor.constraint(equalTo: self.topAnchor),
//            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        
    }
}
