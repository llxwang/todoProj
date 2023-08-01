//
//  NewToDo.swift
//  todoProj
//
//  Created by JZhang on 8/1/23.
//

import SwiftUI

struct NewToDo: View {
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
              
            }) {
                Text("Add task")
            }
            .padding()
        }
    }
}
//commit//
struct NewToDo_Previews: PreviewProvider {
    static var previews: some View {
        NewToDo(title: "", isImportant: false)
    }
}
