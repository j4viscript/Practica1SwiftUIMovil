//
//  ContentView.swift
//  Practica1SwiftUIMovil
//
//  Created by Javier Oskar Murillo Cota on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Ejercicio1View()) {
                    Text("Ir al primer Ejercicio")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                NavigationLink(destination: Ejercicio2View()) {
                    Text("Ir al segundo Ejercicio")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                NavigationLink(destination: Ejercicio3View()) {
                    Text("Ir al tercer Ejercicio")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                NavigationLink(destination: Ejercicio4View()) {
                    Text("Ir al cuarto Ejercicio")
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationBarTitle("Practica 1")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
