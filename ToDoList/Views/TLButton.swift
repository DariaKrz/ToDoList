//
//  TLButton.swift
//  ToDoList
//
//  Created by Дарья Кукурудза on 26.09.2023.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: Color.pink) {
        //
    }
}
