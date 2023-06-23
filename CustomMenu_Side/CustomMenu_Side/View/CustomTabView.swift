//
//  CustomTabView.swift
//  CustomMenu_Side
//
//  Created by user on 22/06/23.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var currentTab: String
    @Binding var showMenu: Bool
    
    var body: some View {
        
        VStack{
            // Tela estática para as páginas...
            HStack{
                //Menu de Botões...
                Button{
                    //
                    withAnimation(.spring()){
                        showMenu = true
                    }
                } label: {
                    Image(systemName: "line.3.horizontal.decrease")
                        .font(.title2)
                        .foregroundColor(.white)
                }
                //hidinig When Menu is Visible
                .opacity(showMenu ? 0 : 1)
                
                Spacer()
                
                Button{} label: {
                    Image("Pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 35, height: 35)
                        .cornerRadius(5)
                }
            }
            // Titulo da página...
            .overlay(
            
            Text(currentTab)
                .font(.title2.bold())
                .foregroundColor(.white)
            //same hiding When Menu is Visible...
                .opacity(showMenu ? 0 : 1)
            )
            .padding([.horizontal,.top])
            .padding(.bottom,8)
            .padding(.top,getSafeArea().top)
            
            TabView(selection: $currentTab){
                
                Home()
                    .tag("Casa")
                
                //As outras telas
                MateriaisView()
                    .tag("Materiais")
                
                Text("Usuário")
                    .tag("Usuário")
                
                Text("Sistema")
                    .tag("Sistema")
                
                Text("Projeto")
                    .tag("Projeto")
                
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .overlay(
        //fechar botão
            Button{
                //toggling Menu Option
                withAnimation(.spring()){
                    showMenu = false
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            //hidinig When Menu is Visible
            .opacity(showMenu ? 1 : 0)
            .padding()
            .padding(.top)
            
            ,alignment: .topLeading
        )
        
        .background(
        
            Color.black
        )
    }
}

//struct CustomTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
