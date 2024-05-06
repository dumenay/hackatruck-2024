//
//  Aula03_2.swift
//  Aula01
//
//  Created by Turma01-5 on 06/05/24.
//

import SwiftUI
struct SheetView: View {
@Environment(\.dismiss) var dismiss

var body: some View {
    ZStack{
        Color("iscuro")
            .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Sheet View")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .fontWeight(.bold)
            Spacer()
            Text("Nome: Fulano\nSobrenome: De Tal")
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
    Button("Press to dismiss") {
        dismiss()
    }
}
}

struct Aula03_2: View {
    @State var nomeH: String = "Fulano"
    @State private var showingSheet = false
    var body: some View {
            NavigationView {
                ZStack{
                    Color("iscuro")
                        .edgesIgnoringSafeArea(.all)
                    VStack{
                        Image("logo")
                            .resizable()
                            .frame(width: 300, height: 125)
                            .offset(y: -320)
                    }
                    VStack{
                        NavigationLink(destination: Modo1(nomeQ : nomeH)){
                            Text("Modo 1")
                                .frame(width: 150, height: 60)
                                .background(Color("vinho"))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                        }
                        NavigationLink(destination: Modo2(nomeT: nomeH)){
                            Text("Modo 2")
                                .frame(width: 150, height: 60)
                                .background(Color("vinho"))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                        }
                        Button("Modo 3") {
                            showingSheet.toggle()
                        }
                        .frame(width: 150, height: 60)
                        .background(Color("vinho"))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .sheet(isPresented: $showingSheet) {
                            SheetView()
                        }
                    }
                }
        }
    }
}

#Preview {
    Aula03_2()
}
