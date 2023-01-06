//
//  ToDoListView.swift
//  MiniOpgave
//
//

import SwiftUI

struct ToDoListView: View {
    @EnvironmentObject var appState: ToDoViewModel
    var body: some View {
        NavigationView {
            List{
                ForEach($appState.items) { $item in
                    NavigationLink{
                        ToDoDetailV(item: $item)
                    } label: {
                        ToDoListRowView(item: $item)
                    }
                        .swipeActions {
                            Button {
                                item.toDoDone.toggle()
                            } label: {
                                Image(systemName: item.toDoDone ? "checkmark" : "circle")
                            }
                            .tint(item.toDoDone ? .blue : .pink)
                            Button(role: .destructive){
                                appState.deleteItemWith(id: item.id)
                            } label: {
                                Label("Delete!!", systemImage: "trash")
                                
                            }
                }
               //  I stedet for swipw acction.onDelete {indexSet in appState.deleteToDoItemAt(indexSet)}
                
                
                }
                }
                .navigationTitle("\(appState.items.count) What to do")
                .toolbar {
                    ToolbarItem (id: "Opret") {
                        NavigationLink {
                        ToDoCreateV()
                    } label: {
                        Image(systemName: "note.text.badge.plus")
                    }
                }
            }
        }
    }
}

struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView().environmentObject(ToDoViewModel())
    }
}
