//
//  MainView.swift
//  CustomMenu_Side
//
//  Created by user on 16/06/23.
//

import SwiftUI

struct MainView: View {
    
    // Current Tab...
    @State var currentTab: String = "Perfil"
    
    //Opções do Menu...
    @State var showMenu: Bool = false
    
    //Barra de Navegação...
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack{
            // Custom Side Menu...
            SideMenu(currentTab: $currentTab)
            
            //Main tab View...
            CustomTabView(currentTab: $currentTab,showMenu: $showMenu)
            //Aplicar Corner Radius...
                .cornerRadius(showMenu ? 25 : 0)
            //Rotação 3D
                .rotation3DEffect(.init(degrees: showMenu ? -15 : 0), axis: (x: 0, y: 1, z: 0),anchor:.trailing)
            
            //Moving view Apart...
                .offset(x: showMenu ? getRect().width / 2 : 0)
                .ignoresSafeArea()
        }
        //always Dark mode
        .preferredColorScheme(.dark)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
//
extension View{
    
    func getSafeArea()->UIEdgeInsets{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets
        else{
            return .zero
        }
        return safeArea
    }
}
