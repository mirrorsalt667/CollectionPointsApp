//
//  OwnLoyaltyCard.swift
//  CollectionPointsApp
//
//  Created on 2022/9/14.
//

// 展示擁有的集點卡
import SwiftUI

struct OwnLoyaltyCard: View {
  
  @State private var loyaltyCardArr: [String] = ["1","2","3","4","5","6","7",]
  @State private var isSheetOpen = false
  
  private let gridArr = [GridItem(.flexible()),GridItem(.flexible())]
  
  var body: some View {
    VStack {
      Text("持有的集點卡")
      ScrollView {
        LazyHGrid(rows: gridArr) {
          ForEach(0..<loyaltyCardArr.count, id: \.self) { num in
            Button {
              isSheetOpen = true
            } label: {
              VStack(spacing: 5) {
                Image(systemName: "rectangle")
                  .scaledToFit()
                Text("集點卡標題: "+loyaltyCardArr[num])
              }
            }
            .sheet(isPresented: $isSheetOpen) {
              Text("Loyalty")
            }
          }
        }
      }
    }
  }
}

struct OwnLoyaltyCard_Previews: PreviewProvider {
  static var previews: some View {
    OwnLoyaltyCard()
  }
}
