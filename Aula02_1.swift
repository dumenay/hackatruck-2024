//
//  Aula02_1.swift
//  Aula01
//
//  Created by Turma01-5 on 03/05/24.
//

import SwiftUI

struct Aula02_1: View {
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var cor: Color = Color("normal")
    @State private var imcCat: String = "Normal"
    var body: some View {
        ZStack{
            Color(cor).edgesIgnoringSafeArea(.all)
            VStack(spacing: 15){
                Text("Calculadora de IMC")
                    .font(.system(size: 30))
                Text("Peso")
                    .font(.system(size: 25))
                TextField("Insira seu peso", value: $peso, format: .number)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 35)
                    .background(Color.white)
                    .cornerRadius(10)
                Text("Altura")
                    .font(.system(size: 25))
                TextField("Insira sua altura", value: $altura, format: .number)
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 35)
                    .background(Color.white)
                    .cornerRadius(10)
                Button("Calcular"){
                    let imc = peso/(altura*altura)
                        if(imc < 18.5){
                            cor = Color("baixo")
                            imcCat = "Baixo Peso"
                        }
                        else if(imc >= 18.5 && imc < 25){
                            cor = Color("normal")
                            imcCat = "Normal"
                        }
                        else if(imc >= 25 && imc < 30){
                            cor = Color("sobre")
                            imcCat = "Sobrepeso"
                        }
                        else{
                            cor = Color("obeso")
                            imcCat = "Obesidade"
                        }
                    }
                    .frame(width: 150, height: 60)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Spacer()
                Text(imcCat)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Spacer()
                Image("imctab")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

#Preview {
    Aula02_1()
}
