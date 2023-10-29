//
//  LoginView.swift
//  ToDoList
//
//  Created by Дарья Кукурудза on 26.09.2023.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView(title: "To Do List", subTitle: "Get things done", angle: 15, background: Color.pink)
                
                Form {
                    
                    if !viewModel.errorMassage.isEmpty {
                        Text(viewModel.errorMassage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    TLButton(title: "Log In", background: Color.blue) {
                        viewModel.login()
                    }
                 //   .padding()
                }
                
                VStack {
                    Text("New around here?")
                 //   Button("Create an Account") {}
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                
                Spacer()
            }

        }
    }
}

#Preview {
    LoginView()
}
