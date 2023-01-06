//
//  ToDO.swift
//  MiniOpgave
//
//  Created by dmu mac 20 on 12/09/2022.
//

//Model klasse
import Foundation

struct ToDo: Identifiable{
    var id = UUID()
   // var toDoTitle: String
    var toDoDescription: String
   // var whenToDo: String
   // var toDoTime: String
    var toDoDone = false
}

extension ToDo{
    static let demoData = [
        ToDo(toDoDescription:"Do Homework"),
        ToDo(toDoDescription: "Read"),
        ToDo(toDoDescription: "Run")
    ]
}
