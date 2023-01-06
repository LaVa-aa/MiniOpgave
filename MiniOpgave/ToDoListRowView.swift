//
//  ToDoListRowView.swift
//  MiniOpgave
//
//

import SwiftUI

struct ToDoListRowView: View {
    //der kommer nogle variable
    @Binding var item: ToDo
    
    var body: some View {
        HStack{
            Text(item.toDoDescription)
            
          //  Spacer()
          //  Toggle(item.toDoDescription, isOn: $item.toDoDone)
          //      .labelsHidden()
        }
        
    }
}
struct ToDoListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListRowView(item:.constant(ToDo(toDoDescription:"Do Homework")))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
