//
//  HomePage.swift
//  CollectionPointsApp
//
//  Created on 2022/9/14.
//

import SwiftUI

struct HomePage: View {
  var body: some View {
    NavigationView {
      VStack(spacing: 30) {
        NavigationLink {
          // TODO: 持有的集點卡
        } label: {
          Text("擁有的集點卡")
        }
        NavigationLink {
          // TODO: 持有的集點卡
        } label: {
          Text("製作QRCode及集點卡")
        }
        NavigationLink {
          // TODO: 持有的集點卡
        } label: {
          Text("主辦的集點卡")
        }
      }
    }
  }
}

struct HomePage_Previews: PreviewProvider {
  static var previews: some View {
    HomePage()
  }
}
