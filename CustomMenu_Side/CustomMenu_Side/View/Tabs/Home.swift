//
//  Home.swift
//  CustomMenu_Side
//
//  Created by user on 22/06/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .leading, spacing: 15) {
            
                Image("Pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 30, height: 250)
                    .cornerRadius(18)
                
                Text("Alguma coisa ae")
                    .font(.caption)
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
