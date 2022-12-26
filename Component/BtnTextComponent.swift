//
//  BtnTextComponent.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct BtnTextComponent<WhateverYourWant: View>: View {
    let action: () -> Void
    let content: WhateverYourWant
    
    init(action: @escaping () -> Void, @ViewBuilder content: () -> WhateverYourWant) {
        self.action = action
        self.content = content()
    }
    var body: some View {
        VStack{
           
                Button(action: action){
                    HStack{
                        content
                            .foregroundColor(.black)
                            .font(.custom("Genos-Regular", size: 20))
                           
                    
                }
                    
            }
        }
      
    }
}
