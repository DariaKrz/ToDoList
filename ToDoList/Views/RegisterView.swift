//
//  RegisterView.swift
//  ToDoList
//
//  Created by Дарья Кукурудза on 26.09.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: Color.orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: Color.green) {
                    viewModel.register()
                }
             //   .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
