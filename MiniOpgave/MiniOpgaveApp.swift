//
//  MiniOpgaveApp.swift
//  MiniOpgave
//
//  Created by dmu mac 20 on 12/09/2022.
//

import SwiftUI

@main
struct MiniOpgaveApp: App {
    var body: some Scene {
        WindowGroup{
            ToDoListView().environmentObject( ToDoViewModel())
        }
    }
}
