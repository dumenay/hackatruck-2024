//
//  Aula01_3.swift
//  Aula01
//
//  Created by Turma01-5 on 02/05/24.
//
//
import SwiftUI

struct Aula01_3: View {
    @State private var nome: String = ""
    @State private var showingAlert = false
    var body: some View {
        HStack{
            VStack(alignment: .center){
                Text("Bem vindo, \(nome)")
                    .font(.system(size: 30))
                TextField("Insira seu nome", text: $nome)
                    .multilineTextAlignment(.center)
            }
        }
        Spacer()
        Image("logo")
            .resizable()
            .frame(width: 225, height:100)
            .shadow(radius: 10)
        Image("truck")
            .resizable()
            .frame(width: 200, height:100)
            .shadow(radius: 10)
        Spacer()
        Button("Entrar") {
                    showingAlert = true
                }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("ALERTA!"), message: Text("Voce ira iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos la")))
        }
    }
}

#Preview {
    Aula01_3()
}
