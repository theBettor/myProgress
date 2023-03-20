//
//  File.swift
//  myProgress
//
//  Created by 김찬교 on 2023/03/10.
//

import UIKit

// (커스텀) 델리게이트 패턴 구현을 위한 프로토콜 선언
protocol TodoDelegate: AnyObject { // class만 쓰이게 하기 위해, anyobject를 해야 DVC에서 weak var 가능
    func addNewtodo(_ todo: Todo)
    func update(index: Int, _ todo: Todo)
}

// Todo 모델
struct Todo {
    
//    lazy var memberImage: UIImage? = {
//        // 이름이 없다면, 시스템 사람이미지 셋팅
//        guard let name = name else {
//            return UIImage(systemName: "person")
//        }
//        // 해당이름으로된 이미지가 없다면, 시스템 사람이미지 셋팅
//        return UIImage(named: "\(name).png") ?? UIImage(systemName: "person")
//    }()
    
    // 멤버의 (절대적) 순서를 위한 타입 저장 속성
    static var todoNumbers: Int = 0
    
    var title: String?
    var memo: String?

    
    // 생성자 구현
    init(title: String?, memo: String?) {
        
        // 0 일때는 0, 0이 아닐때는 타입저장속성의 절대적 값으로 셋팅 (자동순번)
//        self.memberId = Todo.todoNumbers == 0 ? 0 : Todo.todoNumbers
        
        // 나머지 저장속성은 외부에서 셋팅
        self.title = title
        self.memo = memo
       
        
        
        // 멤버를 생성한다면, 항상 타입 저장속성의 정수값 + 1
        Todo.todoNumbers += 1
    }
}

