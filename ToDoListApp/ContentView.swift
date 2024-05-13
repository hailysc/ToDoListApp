//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Haily San Cesario on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    //whether we should show the screen or not
    
    var body: some View {
        VStack {
            HStack {
                Text("My To Do List")
                    .font(.system(size: 35))
                    .fontWeight(.black)
                    .foregroundColor(Color.purple)
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                }) {
                    Text("+")
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.694, saturation: 0.672, brightness: 0.646))
                }
                
                Spacer()
            }
            .padding()
            
        }
        .padding()
        
        List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title + "‼️")
                    } else {
                        Text(toDoItem.title)
                    }
                    }
        }.listStyle(.plain)
        
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
        }
    }
}

#Preview {
    ContentView()
}
