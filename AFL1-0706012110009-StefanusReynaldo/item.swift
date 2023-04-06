//
//  item.swift
//  AFL1-0706012110009-StefanusReynaldo
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation
class item: menu{
    var qty : Int
    
    init(_ name: String, price: Int, toko: String, bonus qty: Int) {
        self.qty = qty
        super.init(nama: name, harga: price, shopName: toko)
    }
}
