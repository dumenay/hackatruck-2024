//
//  Aula04_2.swift
//  Aula01
//
//  Created by Turma01-5 on 07/05/24.
//

import SwiftUI

struct Aula04_2: View {
    @State var nome: String = ""
    @State var artista: String = ""
    @State var capa: String = ""
    var body: some View {
        ZStack{
            VStack{
                AsyncImage(url: URL(string: capa)) { image in
                    image
                        .resizable()
                    
                } placeholder: {
                    Color.black
                }
                .frame(width: 250, height: 250)
                
                Text("\(nome)\n\(artista)")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
        }
        .background(LinearGradient(gradient:
        Gradient(colors: [Color("verder"), Color("izcuro")]),
        startPoint: .top, endPoint: .center))
    }
}

#Preview {
    Aula04_2()
}
