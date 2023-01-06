//
//  ToDoVM.swift
//  MiniOpgave
//
//

import SwiftUI

class ToDoViewModel: ObservableObject{
    @Published var items = ToDo.demoData
    
    func deleteItemWith(id: UUID){
        //index? dvs. den er optionel at hvis den kan ikke finde den id
       let index = items.firstIndex {
            item in item.id == id
        }
        //unrapping
        if let index = index{
            items.remove(at: index)
        }
    }
    func createItem(_ item: ToDo){
        items.append(item)
    }
    
    //deprecated
 //   func deleteToDoItemAt(_ index:IndexSet){
  //      items.remove(atOffsets: index)}
}
