//
//  SecondPage.swift
//  cw-12
//
//  Created by Sarah Almutairi on 07/01/2021.
//

import SwiftUI

struct SecoundPage: View {
    @ObservableObject var env: Env
    @Environment(\.presentationMode) var presentation
    var body: some View {
        VStack{
            VStack{
                TextField("الاسم", text: $env.name)
                TextField("العمر", text: $env.age)
                TextField("الهاتف", text: $env.phone)
            } .padding()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .multilineTextAlignment(.trailing)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Text("موافق")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            })
        }
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
