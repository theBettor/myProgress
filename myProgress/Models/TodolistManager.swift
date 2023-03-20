//
//  TodolistManager.swift
//  myProgress
//
//  Created by 김찬교 on 2023/03/10.
//

import Foundation

final class TodoListManager {
    
    // 멤버리스트를 저장하기 위한 배열
    private var todosList: [Todo] = []
    
    // 전체 멤버 리스트 만들기 (꼭 필요하지 않고, 원래 배열에 멤버 생성해도 됨)
    func makeTodosListDatas() {
        todosList = [
            Todo(title: "운동", memo: "~퍼 진행중입니다. 구현할 수 있을까?"),
            Todo(title: "영어", memo: "~퍼 진행중입니다. 구현할 수 있을까?"),
            Todo(title: "코딩", memo: "~퍼 진행중입니다. 구현할 수 있을까?")
        ]
    }
    
    // 전체 멤버 리스트 얻기
    func getTodosList() -> [Todo] {
        return todosList
    }
    
    // 새로운 멤버 만들기
    func makeNewTodo(_ todo: Todo) {
        todosList.append(todo)
    }
    
    // 기존 멤버의 정보 업데이트
    func updateTodoInfo(index: Int, _ todo: Todo) {
        todosList[index] = todo
    }
    
    // 특정 멤버 얻기 (굳이 필요 없지만, 서브스크립트 구현해보기)
    subscript(index: Int) -> Todo {
        get {
            return todosList[index]
        }
    }
}

