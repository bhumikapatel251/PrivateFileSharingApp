//
//  TxtHadingComponent.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct TxtHeadingComponent: View {
    var title: String
    var body: some View {
        VStack{
            Text(title)
        }
        .font(.custom("Genos-Medium", size: 34))
        .padding(.vertical,-2)
    }
}

struct TextEditorComponent_Previews: PreviewProvider {
    static var previews: some View {
        TxtHeadingComponent(title: "first")
    }
}
