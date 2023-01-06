//
//  ToDoDetailV.swift
//  MiniOpgave
//

import SwiftUI

struct ToDoDetailV: View {
    // der kommer vaiabel som jeg ikke ejer men den kommer
    @Binding var item: ToDo
    var body: some View {
        VStack(spacing: 20){
        Text(item.toDoDescription)
            .font(.largeTitle)
        Button {
            item.toDoDone.toggle()
        } label: {
            Image(systemName: item.toDoDone ? "checkmark" : "circle")
        }
        .tint(item.toDoDone ? .blue : .pink)
    }
    }
}


struct ToDoDetailV_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetailV(item: .constant(ToDo.demoData[0]))
    }
}
