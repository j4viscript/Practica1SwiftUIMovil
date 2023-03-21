//
//  Ejercicio4View.swift
//  Practica1SwiftUIMovil
//
//  Created by Javier Oskar Murillo Cota on 20/03/23.
//
/* Ejercicio 4
Una persona pasa por las siguientes etapas en la vida de acuerdo a su edad:
0-5 años - Infancia
6-11 años - Niñez
12-19 años - Adolescencia
20-30 años - Juventud
31-59 años - Adultez
60-120 años - Ancianidad

Dada la edad entera de una persona calcular su etapa


Parámetros para prueba
    4
    70
    99
    15
    8
    30
    43
*/
import SwiftUI

struct Ejercicio4View: View {
    @State private var age: String = ""
    @State private var lifeStage: String = ""
    var body: some View {
        VStack {
            TextField("Ingrese la edad", text: $age)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)

            Button(action: calculateLifeStage) {
                Text("Calcular etapa de vida")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Text(lifeStage)
                .padding()
        }
        .padding()
    }
    func calculateLifeStage() {
        guard let ageInt = Int(age) else {
            lifeStage = "Por favor, ingrese una edad válida"
            return
        }

        switch ageInt {
        case 0...5:
            lifeStage = "Infancia"
        case 6...11:
            lifeStage = "Niñez"
        case 12...19:
            lifeStage = "Adolescencia"
        case 20...30:
            lifeStage = "Juventud"
        case 31...59:
            lifeStage = "Adultez"
        case 60...120:
            lifeStage = "Ancianidad"
        default:
            lifeStage = "Por favor, ingrese una edad válida"
        }
    }
}

struct Ejercicio4View_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio4View()
    }
}
