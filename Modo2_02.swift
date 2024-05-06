//
//  Modo2_02.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI

struct Modo2_02: View {
    @State var nomeF: String
    var body: some View {
        ZStack{
            Color("iscuro")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Modo 2")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Spacer()
                Text("Volte, \(nomeF)!")
                    .frame(width: 300, height: 150)
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

#Preview {
    Modo2_02(nomeF: String())
}
