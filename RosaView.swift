//
//  Aula03_2.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.all)
            Color.black
                .clipShape(Circle())
                .frame(width: 350, height: 350)
            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 250, height: 250)
                .foregroundColor(.pink)
        }
    }
}

#Preview {
    RosaView()
}
