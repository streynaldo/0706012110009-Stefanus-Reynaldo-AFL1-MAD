//
//  shop.swift
//  AFL1-0706012110009-StefanusReynaldo
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation

struct shop{
    var name: String
    var listMenu: [menu]
    
    init(name: String, listMenu: [menu]) {
        self.name = name
        self.listMenu = listMenu
    }
    
    mutating func addMenu(namaMenu: String, price: Int){
        listMenu.append(menu(nama: namaMenu, harga: price, shopName: self.name))
    }
    
    func showMenu(){
        var counter = 1
        print("""
            Welcome Back to \(name) !
            What would you like to order?
        """)
            for i in listMenu{
                if i.shopName == name{
                    print("[\(counter)] \(i.nama) @ \(i.harga)")
                    counter+=1
                }
            }
            print("""
            -
            [B]ack to Main Menu
            Your menu choice?
    """,terminator: " ")
    }
    
    func buyScreen(pos: Int){
        print("""
              \(listMenu[pos].nama) @ \(listMenu[pos].harga)
              How many \(listMenu[pos].nama) do you want to buy?
              """, terminator: " ")
    }
   
    
    mutating func deleteMenu(pos: Int){
        listMenu.remove(at: pos-1)
    }
}
