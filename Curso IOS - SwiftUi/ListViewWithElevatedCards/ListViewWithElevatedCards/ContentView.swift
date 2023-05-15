//
//  ContentView.swift
//  ListViewWithElevatedCards
//
//  Created by cassio on 09/04/23.
//

import SwiftUI

struct ItemData: Identifiable {
    var id: Int
    var title: String
    var status: String
    var address: String
    var date: String
}


struct ItemView: View {
    var data: ItemData
    var body: some View {
        HStack {
            HStack {
//                Image("blaa")
//                    .frame(width: 50, height: 50)
//                    .background(Circle().fill(Color.gray))
//                    .clipShape(Circle())
//                    .padding(.trailing, 10)
                VStack(spacing: 30) {
                    HStack {
                        Text(data.title)
                            .font(.callout)
                            .lineLimit(1)
                        Spacer()
                        Text(data.status)
                            .font(.caption)
                            .lineLimit(1)
                    }
                    HStack {
                        Text(data.address)
                            .font(.system(size: 12))
                            .lineLimit(6)
                        Spacer()
                       
                    }
                }
                Image(systemName: "info")
                    .frame(width: 25, height: 25)
                    .background(Circle().fill(Color.green))
                    .padding(.leading, 10)
            }
            .padding()
            .background(Rectangle().fill(Color.white))
            .cornerRadius(10)
            .shadow(color: .gray, radius: 3, x: 2, y: 2)
        }
    }
}

extension MyListView {
    static var sharedItems = [
        ItemData(id: 1, title: "Lenses", status: "Ordered", address: "Hyd, Telanganahhhhhhhhiuiuiuiuiuiuytythhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhytytytytytytytytytytytyiuiuiuiuiuiuiuiuhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhiuiuiuiuiuiuiuiui", date: "25 Augghfgfgfgfgfgfgfgfgfgfgfgf     gfgfgjjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjfgfgfgfgfgfgfgf"),
        ItemData(id: 2, title: "Watch", status: "In Process", address: "Pune, Maharashtra", date: "27 Aug"),
        ItemData(id: 3, title: "Bag", status: "Out for delivery", address: "Ahmedabad, Gujarat", date: "28 Aug"),
        ItemData(id: 4, title: "Shoes", status: "Ready", address: "Vizag", date: "21 Aug")
    ]
}

struct MyListView: View {
    var items: [ItemData]
    var body: some View {
        List(items) { item in
            ItemView(data: item)
       }.onAppear {
          UITableView.appearance().tableFooterView = UIView()
           UITableView.appearance().separatorStyle = .none
       }
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        return MyListView(items: MyListView.sharedItems)
    }
}


