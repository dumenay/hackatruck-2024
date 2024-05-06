//
//  Aula01_2.swift
//  Aula01
//
//  Created by Turma01-5 on 02/05/24.
//

import SwiftUI

struct Aula01_2: View {
    var body: some View {
        HStack(spacing: 20){
                Image("images")
                .resizable()
                .frame(width: 150, height:150)
                .clipShape(Circle())
                .padding()
            VStack(spacing: 10){
                Text("HackaTruck")
                    .foregroundColor(.red)
                Text("X Alunos")
                    .foregroundColor(.blue)
                Text("Y Universidades")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    Aula01_2()
}
