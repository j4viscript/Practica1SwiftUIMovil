//
//  Ejercicio3View.swift
//  Practica1SwiftUIMovil
//
//  Created by Javier Oskar Murillo Cota on 20/03/23.
//
/* Ejercicio 3
Dada la siguiente entrada:
1 2
Crear dos variables enteras, asignar cada número a una de las variables, comparar los números e indicar cual es el mayor imprimiendo:
Entre 1 y 2, el mayor es 2

Otras entradas de prueba
4 2
5 14
100 99
 */
import SwiftUI

struct Ejercicio3View: View {
    @State private var firstNumber: String = ""
    @State private var secondNumber: String = ""
    @State private var result: String = ""
    var body: some View {
        VStack {
            Text("Comparando Numeros")
                .font(.title)
            TextField("Primer número", text: $firstNumber)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)

            TextField("Segundo número", text: $secondNumber)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)

            Button(action: compareNumbers) {
                Text("Comparar números")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Text("\(result)")
                .padding()
        }
        .padding()
    }
    func compareNumbers() {
        guard let num1 = Int(firstNumber), let num2 = Int(secondNumber) else {
            result = "Por favor, ingrese dos números válidos"
            return
        }
        
        let maxNumber = max(num1, num2)
        result = "Entre \(num1) y \(num2), el mayor es \(maxNumber)"
    }

}

struct Ejercicio3View_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio3View()
    }
}
