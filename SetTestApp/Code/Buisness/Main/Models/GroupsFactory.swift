//
//  GroupsFactory.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 26.07.2021.
//

import Foundation

final class GroupsFactory {
    
    func groups()-> [Group] {
        
        let group1 = Group(name: "54 слова", title: "Мои слова", image: R.image.group1()!)
        let group2 = Group(name: "54 слова", title: "Слова с урока", image: R.image.group2()!)
        let group3 = Group(name: "54 слова", title: "100 популярных глаголов", image: R.image.group3()!)
        let group4 = Group(name: "54 слова", title: "Еда", image: R.image.group3()!)
        let group5 = Group(name: "54 слова", title: "Слова с урока", image: R.image.group5()!)
        
        return [group1, group2, group3, group4, group5]
    }
}
