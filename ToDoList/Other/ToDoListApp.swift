//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Дарья Кукурудза on 26.09.2023.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
