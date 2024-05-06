//
//  Aula03_4.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
            Color.black
                .clipShape(Circle())
                .frame(width: 350, height: 350)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 250, height: 250)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    AzulView()
}
