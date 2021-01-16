//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Fillipi Paiva Suszek on 15/01/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties

    var fruit: Fruit

    //MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    FruiHeaderView(fruit: fruit)

                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])

                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)

                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])

                        Text(fruit.description)
                            .multilineTextAlignment(.leading)

                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

//MARK: - Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
