//
//  main.swift
//  AFL1-0706012110009-StefanusReynaldo
//
//  Created by MacBook Pro on 02/03/23.
//

import Foundation

var choose: String?
var addqty: String = ""
let resto = ["Tuku-Tuku","Gotri","Madam Lie","Kopte"]
let menuTuku = ["Tahu isi","Nasi Kuning","Nasi Campur","Air Mineral"]
let hargaTuku = [5000,10000,15000,3000]
var qtyTuku = [0,0,0,0]
let menuGotri = ["Tahu isi","Nasi Kuning","Nasi Campur","Air Mineral"]
let hargaGotri = [5000,10000,15000,3000]
var qtyGotri = [0,0,0,0]
let menuLie = ["Tahu isi","Nasi Kuning","Nasi Campur","Air Mineral"]
let hargaLie = [5000,10000,15000,3000]
var qtyLie = [0,0,0,0]



while(choose?.lowercased() != "q"){
    booth()
    choose = readLine()?.lowercased()
    
    if(choose == "1"){
        menuTukuTuku()
        choose = readLine()

            pilihMenuTuku(index: Int(choose!) ?? 0, namaMenu: menuTuku[(Int(choose!) ?? 0)-1], harga: hargaTuku[(Int(choose!) ?? 0)-1])
        
    }
}

func booth(){
    var count=1
    print("""
    Welcome to UC-Walk Cafetaria 👩🏿‍🍳
    Please choose cafetaria :
    """)
    for i in resto{
        
        print("["+String(count)+"] " + i)
        count+=1
    }
    print("""
    -
    [S]hopping Cart
    [Q]uit
    Your cafetaria choice?
    """)
}

func menuTukuTuku(){
    var count=1
    print("""
    Hi, welcome back to Tuku-Tuku!
    What would you like to order?

""")
    for i in menuTuku{
        print("["+String(count)+"] "+i)
        count+=1
    }
    print("""
    -
    [B]ack to Main Menu
    Your menu choice?
    """)
}

func pilihMenuTuku(index:Int, namaMenu:String, harga:Int){
    print(namaMenu+"@"+String(harga))
    print("How many "+namaMenu+" do you want to buy?")
    addqty = readLine()!
    qtyTuku[index-1] = qtyTuku[index-1] + Int(addqty)!
    print("Thankyou for ordering")
//    print(qtyTuku[0])
}
