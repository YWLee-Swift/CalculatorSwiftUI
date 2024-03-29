//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by YoungWoon Lee on 2022/07/19.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 12) {
                
                HStack {
                    Spacer()
                    Text("42").foregroundColor(.white)
                        .font(.system(size: 64))
                    
                }.padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing : 12) {
                        ForEach(row, id: \.self) { buttonText in
                            Text(buttonText)
                                .font(.system(size: 32))
                                .frame(width: self.buttonWidth(), height: self.buttonWidth())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(self.buttonWidth())
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
