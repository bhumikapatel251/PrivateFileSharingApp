//
//  ButtonFormView.swift
//  PrivateFileSharingApp
//
//  Created by Bhumika Patel on 26/12/22.
//

import SwiftUI

struct ButtonFormView: View {
    typealias ButtonActionHandler = (_ formId: FormField) -> Void
    
    let component: ButtonFormComponent
    let handler : ButtonActionHandler
    
    init(component: ButtonFormComponent, handler: @escaping ButtonFormView.ButtonActionHandler) {
        self.component = component
        self.handler = handler
    }
    var body: some View {
        Button(component.title) {
            handler(component.formId)
        }
        .frame(maxWidth: .infinity, minHeight: 44, alignment: .center)
        .background(Color.blue)
        .foregroundColor(.white)
        .font(.system(size: 16, weight: .bold))
        .cornerRadius(8)
    }
}

struct ButtonFormView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonFormView(component: .init(id: .submit, title: "Title here")){_ in }
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
