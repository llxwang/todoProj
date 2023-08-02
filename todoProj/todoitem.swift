//
//  todoitem.swift
//  todoProj
//
//  Created by JZhang on 8/1/23.
//

import SwiftUI

struct todoitem: View {
    var body: some View {
        Text ("hello")
    }
}

class ToDoItem: Identifiable{
    var id = UUID()
    var title = ""
    var isImportant = false
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}
struct todoitem_Previews: PreviewProvider {
    static var previews: some View {
        todoitem()
    }
}
