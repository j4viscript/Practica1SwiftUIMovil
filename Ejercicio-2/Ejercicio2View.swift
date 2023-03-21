//
//  Ejercicio-2.swift
//  Practica1SwiftUIMovil
//
//  Created by Javier Oskar Murillo Cota on 20/03/23.
//
/* Ejercicio 2
Un vendedor tiene los siguientes precios
1 pepino = $20
1 aguacate = $65
1 tomate = $4
5 nopales = $15
1 manzana = $20

Un cliente compra 3 pepinos, 2 aguacates, 7 tomates, 15 nopales y 4 manzanas. Estos valores se deben pasar como parámetros de entrada al programa.


Dados precios anteriores, calcular el costo para cada producto elegido por el cliente, el total, además el vendedor debe calcular 30% del costo final como costo al que obtuvo los productos y 20% como gastos de operación, el 50% restantes es la ganancia del vendedor.
 */
import SwiftUI

struct Vendedor {
    let precios: [String: Double] = [
        "pepino": 20,
        "aguacate": 65,
        "tomate": 4,
        "nopales": 3, // El precio por nopal, ya que son 5 nopales por $15
        "manzana": 20
    ]

    func calcularCostos(cantidades: [String: Int]) -> (costos: [String: Double], total: Double, costoAdquisicion: Double, gastosOperacion: Double, ganancia: Double) {
        var costos: [String: Double] = [:]
        var total: Double = 0

        for (producto, cantidad) in cantidades {
            let costo = Double(cantidad) * precios[producto]!
            costos[producto] = costo
            total += costo
        }

        let costoAdquisicion = total * 0.3
        let gastosOperacion = total * 0.2
        let ganancia = total * 0.5

        return (costos, total, costoAdquisicion, gastosOperacion, ganancia)
    }
}

struct Ejercicio2View: View {
    let vendedor = Vendedor()
    let cantidades: [String: Int] = [
        "pepino": 3,
        "aguacate": 2,
        "tomate": 7,
        "nopales": 15,
        "manzana": 4
    ]
    var body: some View {
        VStack {
            Text("Costos y ganancias")
                .font(.largeTitle)
                .padding()

            let resultado = vendedor.calcularCostos(cantidades: cantidades)

            ForEach(resultado.costos.sorted(by: { $0.key < $1.key }), id: \.key) { producto, costo in
                HStack {
                    Text("\(producto.capitalized):")
                        .frame(width: 120, alignment: .leading)
                    Text("$\(costo, specifier: "%.2f")")
                }
            }

            Divider()

            HStack {
                Text("Total:")
                    .frame(width: 120, alignment: .leading)
                Text("$\(resultado.total, specifier: "%.2f")")
            }

            HStack {
                Text("Costo de adquisición:")
                    .frame(width: 120, alignment: .leading)
                Text("$\(resultado.costoAdquisicion, specifier: "%.2f")")
            }

            HStack {
                Text("Gastos de operación:")
                    .frame(width: 120, alignment: .leading)
                Text("$\(resultado.gastosOperacion, specifier: "%.2f")")
            }

            Divider()

            HStack {
                Text("Ganancia:")
                    .frame(width: 120, alignment: .leading)
                Text("$\(resultado.ganancia, specifier: "%.2f")")
            }
        }
        .padding()
    }
}
struct Ejercicio2View_Previews: PreviewProvider {
    static var previews: some View {
        Ejercicio2View()
    }
}
