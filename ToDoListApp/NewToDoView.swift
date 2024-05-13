//
//  NewToDoView.swift
//  ToDoListApp
//
//  Created by Haily San Cesario on 5/12/24.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    
    
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.88, saturation: 0.52, brightness: 0.973))
            TextField("Task Description Goes Here...", text: $title)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: $isImportant) {
                Text("Is it Important?")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.583, brightness: 0.868))
            }.padding()
            
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add")
            }.padding()
        }
    }
    
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
    }
}

//#Preview {
//    NewToDoView()
//}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
    }
}
