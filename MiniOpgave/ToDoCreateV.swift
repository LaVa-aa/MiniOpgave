//
//  ToDoCreateV.swift
//  MiniOpgave
//
//

import SwiftUI

struct ToDoCreateV: View {
    
    // den viser hvor man er hen
    @Environment(\.dismiss) private var dismiss
    
    @EnvironmentObject var VM: ToDoViewModel
    @State private var descrip = ""
    @State private var done = false
    
    var body: some View {
        VStack(spacing: 20){
            TextField("discription...", text: $descrip)
                    Toggle("Done", isOn: $done)

        }
        .padding()
        .toolbar{
            ToolbarItem(id: "createNew", placement: .navigationBarTrailing){
                Button{
                    let toDoItem = ToDo(toDoDescription: descrip, toDoDone: done)
                    VM.createItem(toDoItem)
                    dismiss()
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
        }
        }
}

struct ToDoCreateV_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ToDoCreateV().environmentObject(ToDoViewModel())
                .navigationTitle("Create new To Do Item ")
        }
    }
}
