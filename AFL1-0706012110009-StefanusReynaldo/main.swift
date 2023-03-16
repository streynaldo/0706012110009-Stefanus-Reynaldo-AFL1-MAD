//
//  main.swift
//  AFL1-0706012110009-StefanusReynaldo
//
//  Created by MacBook Pro on 02/03/23.
//

import Foundation

var choose: String? //inputan user
var addqty: String = "" //inputan user

typealias cart = (shopName: String, namaMenu: String, harga: Double, qty:Double)
var cartArr : [cart] = []


var menuTuku = [
    "Tahu isi" : 5000,
    "Nasi Kuning" : 10000,
    "Nasi Campur" : 15000,
    "Air Mineral" : 3000,
    "Sparkling Water" : 9000
]

var menuGotri = [
    "Nasi Goreng":15000,
    "Nasi Bakar":12000,
    "Nasi Uduk":13000,
    "Fanta":5000,
    "Sprite":6000
]

var menuLie = [
    "Jus Jeruk":8000,
    "Jus Mangga":9000,
    "Jus Markisa":10000,
    "Jus Apel":15000,
    "Jus Jambu":20000
]

var menuKopte = [
    "Tahu Pong":9000,
    "Nasi Putih":3000,
    "Nasi Kebuli":90000,
    "Nasi Jeruk":10000,
    "Nasi Bigul":20000
]

var menuXiang = [
    "Tahu Goreng":5000,
    "Nasi Hainan":10000,
    "Nasi Goreng":8000,
    "Roti Bakar":10000,
    "Teh":10000
]

//Array harus disort dulu
var menuTukuSorted = menuTuku.sorted(by: {$0.value < $1.value})
var menuGotriSorted = menuGotri.sorted(by: {$0.value < $1.value})
var menuLieSorted = menuLie.sorted(by: {$0.value < $1.value})
var menuKopteSorted = menuKopte.sorted(by: {$0.value < $1.value})
var menuXiangSorted = menuXiang.sorted(by: {$0.value < $1.value})

let resto = ["Tuku-Tuku","Gotri","Madam Lie","Kopte","XiangJia"]

//let menuTuku = ["Tahu isi","Nasi Kuning","Nasi Campur","Air Mineral"]
//let hargaTuku = [5000,10000,15000,3000]
//var qtyTuku = [0,0,0,0]
//
//let menuGotri = ["Nasi Goreng","Nasi Bakar","Nasi Uduk","Fanta"]
//let hargaGotri = [15000,12000,13000,5000]
//var qtyGotri = [0,0,0,0]
//
//let menuLie = ["Jus Jeruk","Jus Mangga","Jus Markisa","Jus Alpukat"]
//let hargaLie = [8000,10000,7000,15000]
//var qtyLie = [0,0,0,0]
//
//let menuKopte = ["Tahu isi","Nasi Kuning","Nasi Campur","Air Mineral"]
//let hargaKopte = [5000,10000,15000,3000]
//var qtykopte = [0,0,0,0]



while(choose?.lowercased() != "q"){
    booth()
    while(true){
        
        choose = readLine()?.lowercased()
        if let check = Int(choose!){
            break
        }else if(choose == "s" || choose == "q"){
            break
        }
        else{
            print("Wrong Input")
        }
    }
    
    if(choose == "1"){
        getMenu(menu: menuTukuSorted, storeName: resto[0])
        choose = readLine()?.lowercased()
        while((Int(choose ?? "") ?? 0 > menuTuku.count || Int(choose ?? "") ?? 0 < 1) && choose?.lowercased() != "b"){
            print("Wrong Choice")
            choose = readLine()?.lowercased()
        }
        
        if(choose?.lowercased() == "b"){
            continue
        }else if let check = Int(choose ?? ""){
            print("""
                  \(menuTukuSorted[Int(choose!)!-1].0) @ \(menuTukuSorted[Int(choose!)!-1].1)
                  How many \(menuTukuSorted[Int(choose!)!-1].0) do you want to buy?
                  """)
            addqty = (readLine()?.lowercased())!
            while(true){
                if let check = Double(addqty){
                    if(Double(addqty)! > 0){
                        break
                    }else{
                        print("Wrong Input")
                        addqty = (readLine()?.lowercased())!
                    }
                }else{
                    print("Wrong Input")
                    addqty = (readLine()?.lowercased())!
                }
            }
//            addqty = (readLine()?.lowercased())!

            buy(namaMenu: (menuTukuSorted[Int(choose!)!-1].0), qty: Double(addqty)!, harga: Double((menuTukuSorted[Int(choose!)!-1].1)), storeName: resto[0])
            print("Thankyou For Ordering")
        }
        
    }
    else if(choose == "2"){
        getMenu(menu: menuGotriSorted, storeName: resto[1])
        choose = readLine()?.lowercased()
        while((Int(choose ?? "") ?? 0 > menuGotri.count || Int(choose ?? "") ?? 0 < 1) && choose?.lowercased() != "b"){
            print("Wrong Choice")
            choose = readLine()?.lowercased()
        }
        if(choose?.lowercased() == "b"){
            continue
        }else if let check = Int(choose ?? ""){
            print("""
                  \(menuGotriSorted[Int(choose!)!-1].0) @ \(menuGotriSorted[Int(choose!)!-1].1)
                  How many \(menuGotriSorted[Int(choose!)!-1].0) do you want to buy?
                  """)
            addqty = (readLine()?.lowercased())!
            while(true){
                if let check = Double(addqty){
                    if(Double(addqty)! > 0){
                        break
                    }else{
                        print("Wrong Input")
                        addqty = (readLine()?.lowercased())!
                    }
                }else{
                    print("Wrong Input")
                    addqty = (readLine()?.lowercased())!
                }
            }
            
            buy(namaMenu: (menuGotriSorted[Int(choose!)!-1].0), qty: Double(addqty)!, harga: Double((menuGotriSorted[Int(choose!)!-1].1)), storeName: resto[1])
            print("Thankyou For Ordering")
        }
    }
    else if(choose == "3"){
        getMenu(menu: menuLieSorted, storeName: resto[2])
        choose = readLine()?.lowercased()
        while((Int(choose ?? "") ?? 0 > menuLie.count || Int(choose ?? "") ?? 0 < 1) && choose?.lowercased() != "b"){
            print("Wrong Choice")
            choose = readLine()?.lowercased()
        }
        if(choose?.lowercased() == "b"){
            continue
        }else if let check = Int(choose ?? ""){
            print("""
                  \(menuLieSorted[Int(choose!)!-1].0) @ \(menuLieSorted[Int(choose!)!-1].1)
                  How many \(menuLieSorted[Int(choose!)!-1].0) do you want to buy?
                  """)
            addqty = (readLine()?.lowercased())!
            while(true){
                if let check = Double(addqty){
                    if(Double(addqty)! > 0){
                        break
                    }else{
                        print("Wrong Input")
                        addqty = (readLine()?.lowercased())!
                    }
                }else{
                    print("Wrong Input")
                    addqty = (readLine()?.lowercased())!
                }
            }
            
            buy(namaMenu: (menuLieSorted[Int(choose!)!-1].0), qty: Double(addqty)!, harga: Double((menuLieSorted[Int(choose!)!-1].1)), storeName: resto[2])
            print("Thankyou For Ordering")
        }
    }
    else if(choose == "4"){
        getMenu(menu: menuKopteSorted, storeName: resto[3])
        choose = readLine()?.lowercased()
        while((Int(choose ?? "") ?? 0 > menuKopte.count || Int(choose ?? "") ?? 0 < 1) && choose?.lowercased() != "b"){
            print("Wrong Choice")
            choose = readLine()?.lowercased()
        }
        if(choose?.lowercased() == "b"){
            continue
        }else if let check = Int(choose ?? ""){
            print("""
                  \(menuKopteSorted[Int(choose!)!-1].0) @ \(menuKopteSorted[Int(choose!)!-1].1)
                  How many \(menuKopteSorted[Int(choose!)!-1].0) do you want to buy?
                  """)
            addqty = (readLine()?.lowercased())!
            while(true){
                if let check = Double(addqty){
                    if(Double(addqty)! > 0){
                        break
                    }else{
                        print("Wrong Input")
                        addqty = (readLine()?.lowercased())!
                    }
                }else{
                    print("Wrong Input")
                    addqty = (readLine()?.lowercased())!
                }
            }
            
            buy(namaMenu: (menuKopteSorted[Int(choose!)!-1].0), qty: Double(addqty)!, harga: Double((menuKopteSorted[Int(choose!)!-1].1)), storeName: resto[3])
            print("Thankyou For Ordering")
        }
    }
    else if(choose == "5"){
        getMenu(menu: menuXiangSorted, storeName: resto[4])
        choose = readLine()?.lowercased()
        while((Int(choose ?? "") ?? 0 > menuXiang.count || Int(choose ?? "") ?? 0 < 1) && choose?.lowercased() != "b"){
            print("Wrong Choice")
            choose = readLine()?.lowercased()
        }
        if(choose?.lowercased() == "b"){
            continue
        }else if let check = Int(choose ?? ""){
            print("""
                  \(menuXiangSorted[Int(choose!)!-1].0) @ \(menuXiangSorted[Int(choose!)!-1].1)
                  How many \(menuXiangSorted[Int(choose!)!-1].0) do you want to buy?
                  """)
            addqty = (readLine()?.lowercased())!
            while(true){
                if let check = Double(addqty){
                    if(Double(addqty)! > 0){
                        break
                    }else{
                        print("Wrong Input")
                        addqty = (readLine()?.lowercased())!
                    }
                }else{
                    print("Wrong Input")
                    addqty = (readLine()?.lowercased())!
                }
            }
            
            buy(namaMenu: (menuXiangSorted[Int(choose!)!-1].0), qty: Double(addqty)!, harga: Double((menuXiangSorted[Int(choose!)!-1].1)), storeName: resto[4])
            print("Thankyou For Ordering")
        }
    }
    else if(choose?.lowercased() == "s"){
        
        if(cartArr.isEmpty){
            print("Cart is Empty")
        }else{
            var ttuku = 0
            var tlie = 0
            var tkopte = 0
            var tgotri = 0
            var txiang = 0
            var total : Double = 0
            
            for (shopName,_,_,_) in cartArr{
                if (shopName == "Tuku-Tuku"){
                    ttuku = 1
                }else if (shopName == "Gotri"){
                    tgotri = 1
                }else if (shopName == "Madam Lie"){
                    tlie = 1
                }else if (shopName == "Kopte"){
                    tkopte = 1
                }else if (shopName == "XiangJia"){
                    txiang = 1
                }
            }
            if(ttuku == 1){
                print("Your Order From Tuku-Tuku : ")
                for(shopName, menu, harga, qty) in cartArr{
                    if(shopName == "Tuku-Tuku"){
                        print("- \(menu) x\(qty)")
                        total += (harga * qty)
                    }
                }
            }
            
            if(tgotri == 1){
                print("Your Order From Gotri : ")
                for(shopName, menu, harga, qty) in cartArr{
                    if(shopName == "Gotri"){
                        print("- \(menu) x\(qty)")
                        total += (harga * qty)
                    }
                }
            }
            
            if(tlie == 1){
                print("Your Order From Madam Lie : ")
                for(shopName, menu, harga, qty) in cartArr{
                    if(shopName == "Madam Lie"){
                        print("- \(menu) x\(qty)")
                        total += (harga * qty)
                    }
                }
            }
            
            if(tkopte == 1){
                print("Your Order From Kopte : ")
                for(shopName, menu, harga, qty) in cartArr{
                    if(shopName == "Kopte"){
                        print("- \(menu) x\(qty)")
                        total += (harga * qty)
                    }
                }
            }
            
            if(txiang == 1){
                print("Your Order From Xiang Jia : ")
                for(shopName, menu, harga, qty) in cartArr{
                    if(shopName == "XiangJia"){
                        print("- \(menu) x\(qty)")
                        total += (harga * qty)
                    }
                }
            }
            
            print("""
            Press [B]ack to go back
            Press [P]ay to pay/checkout
    """)
            choose = readLine()?.lowercased()
            while(choose != "b" && choose != "p"){
                print("Wrong Input")
//                print(choose)
                choose = readLine()?.lowercased()
            }
            if(choose?.lowercased() == "b"){
                
            }else if(choose?.lowercased() == "p"){
                paymentScreen(totalAmount: total)
                choose = readLine()
                
                while(choose != ""){
                    print("Wrong Input")
                    choose = readLine()
                }
            }
        }
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

func getMenu(menu:[(String,Int)],storeName:String){
    var index = 1;
    print("""
    Welcome Back to \(storeName) !
    What would you like to order?
""")
    for (key,value) in menu{
        print("[\(index)] \(key) @ \(value)")
        index+=1
    }
    print("""
    -
    [B]ack to Main Menu
    Your menu choice?
""")
}

func buy(namaMenu:String, qty:Double, harga:Double, storeName:String){
    let tempOrder : cart = (storeName, namaMenu, harga, qty)
    var check = false
    for (index, _) in cartArr.enumerated(){
//        if(tempOrder.shopName == shopName && tempOrder.namaMenu == namaMenu){
//            cartArr[ += tempOrder.qty
//            break
//        }
         if cartArr[index].shopName == tempOrder.shopName && cartArr[index].namaMenu == tempOrder.namaMenu {
             cartArr[index].qty += tempOrder.qty
             check = true
        }
    }
    if(!check){
        cartArr.append(tempOrder)
    }
}

func paymentScreen(totalAmount:Double){
    var pay : String? = ""
    var test : Bool = false
    print("""
          Your Total Order : \(totalAmount)
          Please Enter Your Payment.
          
          Enter Your Amount Of Money :
          """, terminator: "")
    pay = readLine()
    
    while(!test){
       
        if let check = Double(pay ?? ""){
            if(Double(pay!)! >= totalAmount){
                test = true
            }else if(Double(pay!)! == 0) {
                print("Payment Cant Be Zero")
                print("Enter Your Amount Of Money : ",terminator: "")
                pay = readLine()!
            }else{
                print("Invalid Amount")
                print("Enter Your Amount Of Money : ",terminator: "")
                pay = readLine()
            }
        }
        else if(pay == ""){
            print("Please input your payment.")
            print("Enter Your Amount Of Money : ",terminator: "")
            pay = readLine()
        }
        else{
            print("Input Must Be Numeric")
            print("Enter Your Amount Of Money : ",terminator: "")
            pay = readLine()!
        }
    }
    print("""
    Your Total Order : \(totalAmount)
    You Pay : \(Double(pay!)!) Your Change : \(Double(pay!)! - totalAmount)
    
    ENJOY YOUR MEAL!!!
    
    Press [return] to go back to main screen
    """)
}


