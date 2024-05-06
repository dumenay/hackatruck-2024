//
//  Aula03_3.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            Color.black
                .clipShape(Circle())
                .frame(width: 350, height: 350)
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 250, height: 250)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    CinzaView()
}
