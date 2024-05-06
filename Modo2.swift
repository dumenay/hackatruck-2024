//
//  Modo2.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI

struct Modo2: View {
    @State var nomeT: String
    var body: some View {
        NavigationStack {
            ZStack{
                Color("iscuro")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Modo 2")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Spacer()
                    VStack(alignment: .center){
                        Spacer()
                        TextField("Insira seu nome", text: $nomeT)
                            .foregroundColor(.white)
                        Text("Bem-vindo, \(nomeT)")
                        
                        NavigationLink(destination: Modo2_02(nomeF: nomeT)){
                            Text("Acessar Tela")
                                .frame(width: 150, height: 60)
                                .background(.blue)
                                .cornerRadius(10)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                        }
                        Spacer()
                        
                    }
                    .frame(width: 300, height: 200)
                    .background(Color("vinho"))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Modo2(nomeT: String())
}
