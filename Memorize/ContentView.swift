//
//  ContentView.swift
//  Memorize
//
//  Created by Lucas Mafra Pinheiro on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["✌","😂","😝","😁","😱","👉","🙌","🍻","🔥","🌈","☀","🎈","🌹","💄","🎀","⚽","🎾","🏁","😡","👿","🐻","🐶","🐬","🐟","🍀","👀","🚗","🍎","💝","💙","👌","❤","😍","😉","😓","😳","💪","💩","🍸","🔑","💖","🌟","🎉","🌺","🎶","👠","🏈","⚾","🏆","👽","💀","🐵","🐮","🐩","🐎","💣","👃","👂","🍓","💘","💜","👊","💋","😘","😜","😵","🙏","👋","🚽","💃","💎","🚀","🌙","🎁","⛄","🌊","⛵","🏀","🎱","💰","👶","👸","🐰","🐷","🐍","🐫","🔫","👄","🚲","🍉","💛","💚"]
    
    @State var cardsCount: Int = 4
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            cardsActions
        }
        .padding()
        .foregroundColor(.orange)
    }
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardsCount, id: \.self) { index in
                CardView(content: emojis[index]).aspectRatio(2/3, contentMode: .fit)
            }
        }
    }
    var cardsActions: some View {
        HStack {
            cardAdder
            Spacer()
            cardRemover
        }.imageScale(.large)
            .font(.largeTitle)
    }
    
    func factoryButtonAction(by offset:Int, symbol: String) -> some View {
        Button(action: {
            cardsCount += offset
        }, label: {
            Image(systemName: symbol)
        }).disabled(cardsCount + offset < 1 || cardsCount + offset > emojis.count)
    }
    var cardAdder: some View {
        factoryButtonAction(by: +1, symbol: "plus.rectangle.fill.on.rectangle.fill")
    }
    var cardRemover: some View {
        factoryButtonAction(by: -1, symbol: "minus.rectangle.fill")
    }
}

struct CardView: View {
    @State var isFaceUp = false
    var content: String
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 6)
                Text(content).imageScale(.large)
            }
            base.fill().opacity(isFaceUp ? 0 : 1)
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}





















#Preview {
    ContentView()
}
