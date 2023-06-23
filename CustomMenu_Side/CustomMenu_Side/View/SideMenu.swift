import SwiftUI

struct SideMenu: View {
    
    @Binding var currentTab: String
    
    //adding Smooth Transmition batween tabs with the help of Matched Geometry Effect...
  @Namespace var animation
    
    var body: some View {
        
        VStack{
            
            HStack(spacing: 15){
                
                
                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                
                Text("Gentil")
                    .font(.title2.bold())
                    .foregroundColor(.white)
            }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
            //Para a Tela Pequena
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false, content: {
                
                //Tab Buttons...
                       VStack(alignment: .leading, spacing: 25){
                
                CustomTabButton(icon: "theatermasks.fill", title: "Início")
                CustomTabButton(icon: "safari.fill", title: "Materiais")
                CustomTabButton(icon: "person.fill", title: "Usuário")
                CustomTabButton(icon: "gearshape.fill", title: "Sistema")
                CustomTabButton(icon: "questionmark.circle.fill", title: "Projeto")
                
                Spacer()
                
                CustomTabButton(icon: "rectangle.portrait.and.arrow.right", title: "Sair")
            }
            })
            .padding()
            .padding(.top,45)
            
            // Max Windth do Screen Width...
            .frame(width: getRect().width / 2,alignment: .leading)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.leading,10)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(
        
            Color("BG")
        )
    }
    
    //Custom Button...
    @ViewBuilder
    func CustomTabButton(icon: String,title: String)->some View{
        
        Button{

            if title == "Sair"{
                print("Sair")
            }
            else{
                withAnimation{
                    currentTab = title
                }
            }
        } label: {
            
            HStack(spacing: 12){
                
                Image(systemName: icon)
                    .font(.title3)
                    .frame(width: currentTab == title ? 48 : nil, height: 48)
                    .foregroundColor(currentTab == title ? Color("Ciano") : (title == "Sair" ? Color("Laranja") : .white))
                    .background(
                        ZStack{
                            if currentTab == title{
                                Color.white
                                    .clipShape(Circle())
                                    .matchedGeometryEffect(id: "TABCIRCLE", in: animation)
                            }
                        }
                        )
                Text(title)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(title == "Sair" ? Color("Laranja") : .white)
            }
            .padding(.trailing,18)
            .background(
                
                ZStack{
                    if currentTab == title{
                        Color("Ciano")
                            .clipShape(Capsule())
                            .matchedGeometryEffect(id: "TABCAPSULE", in: animation)
                    }
                    
                }
            )
        }
        .offset(x: currentTab == title ? 15 : 0)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

// Exteder o View para Screen Bounds...
extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
