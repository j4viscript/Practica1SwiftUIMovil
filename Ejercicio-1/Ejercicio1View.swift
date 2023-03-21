//
//  Ejercicio1View.swift
//  Practica1SwiftUIMovil
//
//  Created by Javier Oskar Murillo Cota on 20/03/23.
//
/* Ejercicio 1
Dada la siguiente entrada:
1 2
Crear dos variables enteras, asignar cada número
a una de las variables, sumar y asignar el resultado
en una nueva variable, mostrar el resultado de la
suma de la siguiente forma:
1 + 2 = 3
*/

/* Otras entradas de prueba
3 4
5 6
7 8
 */

import SwiftUI

struct Ejercicio1View: View {
    @State var v1: Int
    @State var v2: Int
    @State var result: Int
    
    var body: some View {
        VStack{
            Text("Ejercicio 1")
                .font(.title)
                .bold()
                .padding()
            Text("El resultado es:")
                .font(.title)
            Text("\(v1) + \(v2) = \(result)")
                .bold()
            HStack{
                TextField("Variable 1", value: $v1, formatter: NumberFormatter())
                    .frame(width: 100, height: 50)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .background(.red)
                Text("+")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                TextField("Variable 2", value: $v2, formatter: NumberFormatter())
                    .frame(width: 100, height: 50)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .background(.blue)
            }
            Button(action: {
                result = v1 + v2
            }, label: {
                Text("Sumar")
                    .font(.title)
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.green)
                    .padding()
            })
        }
    }
}
struct Ejercicio1View_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio1View(v1: 0, v2: 0, result: 0)
    }
}
