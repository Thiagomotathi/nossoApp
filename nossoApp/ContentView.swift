//
//  ContentView.swift
//  nossoApp
//
//  Created by User on 25/04/24.
//

import SwiftUI

struct Integrantes: Identifiable {
    
    let name: String
    var id: String{name}
}

let integrantes = [
  Integrantes(name: " 🐲  Rafa "),
  Integrantes(name: " 💚  Thigo "),
  Integrantes(name: " 🌟  Clara "),
  Integrantes(name: "🧙‍♂️   Dan "),
  Integrantes(name: " 💯  Todes! ")
  
]

struct ContentView: View {
    @State private var selectedIntegrante: String = "nenhum" // Default selection
    var body: some View {
        
        NavigationView{
            
            List {
                Picker("Integrante favorito", selection: $selectedIntegrante) {
                    ForEach(integrantes) { integrante in
                        Text(integrante.name)
                            .tag(integrante.name)// Set tag for selection
                    }
                }
                .pickerStyle(WheelPickerStyle())
                Text("Você selecionou: \(selectedIntegrante)") // Display selected integrante
            }
            .navigationTitle("Integrantes")
        }
    }
}

#Preview {
    ContentView()
}
