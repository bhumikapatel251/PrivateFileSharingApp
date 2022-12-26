//
//  TxtTagComponent.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct TxtTagComponent: View {
    var subTitle: String
    var body: some View {
        VStack{
            Text(subTitle)
                .font(.custom("Genos-Regular", size: 22))
        }
    }
      
}

struct TxtTagComponent_Previews: PreviewProvider {
    static var previews: some View {
        TxtTagComponent(subTitle: "SubTitle2")
    }
}
