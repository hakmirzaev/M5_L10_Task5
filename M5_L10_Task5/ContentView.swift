//
//  ContentView.swift
//  M5_L10_Task5
//
//  Created by Bekhruz Hakmirzaev on 30/11/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var text = ""
    var body: some View {
        VStack(spacing: 10){
            Image("pdp")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.size.width, height: 200)
                .mask(Text("PDP")
                    .fontWeight(.black)
                    .font(.system(size: 100))
                    .frame(maxWidth: .infinity, alignment: .center))
            Spacer()
            Text("Submit your file here").font(.system(size: 20)).italic().bold()
            HStack{
                Image(systemName: "person")
                TextField("Send a message", text: $text)
                Button(action: {}, label: {
                    Image(systemName: "paperclip")
                })
                Button(action: {}, label: {
                    Image(systemName: "location").foregroundColor(.green)
                })
            }.padding()
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
        }.padding().frame(maxWidth: .infinity, alignment: .leading)
            .background(LinearGradient(gradient: Gradient(colors: [.white,.blue,.white]), startPoint: .bottom, endPoint: .top))
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
