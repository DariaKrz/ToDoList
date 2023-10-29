//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Дарья Кукурудза on 26.09.2023.
//

import SwiftUI

struct ToDoListItemView: View {
    
    @StateObject var viewModel = ToDoListItemViewViewModel()
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(item.title)
                    .font(.body)
                    
                Text("\(Date(timeIntervalSince1970: item.dueData).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.blue)
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "Get milk", dueData: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
