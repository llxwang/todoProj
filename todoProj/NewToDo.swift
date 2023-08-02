//
//  NewToDo.swift
//  todoProj
//
//  Created by JZhang on 8/1/23.
//

import SwiftUI


struct NewToDo: View {
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    @State var title: String
    @State var isImportant: Bool
    var body: some View {
        VStack {
            Text("Task title: ")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $title)
                .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                      .padding()
            Toggle(isOn: $isImportant) {
                            Text("Is it important?")
                    .padding()
                        }
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add task")
            }
            .padding()
        }
        
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
}

struct NewToDo_Previews: PreviewProvider {
    static var previews: some View {
        NewToDo(toDoItems: .constant([]), showNewTask: .constant(true), title: "", isImportant: false)
    }
}
