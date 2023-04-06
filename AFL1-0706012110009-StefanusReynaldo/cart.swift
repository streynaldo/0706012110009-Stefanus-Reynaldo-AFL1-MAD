//
//  cart.swift
//  AFL1-0706012110009-StefanusReynaldo
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation
//protocol
protocol CartFunction {
    func addItem(newItem : item)
    func deleteItem(pos : Int)
}
class cart : CartFunction{
    
    var listItem : [item] = []
    var total : Int = 0
    
    init(){
        
    }
    
    init(listItem: [item], total: Int) {
        self.listItem = listItem
        self.total = total
    }
    
    func addItem(newItem : item){
        listItem.append(newItem)
    }
    
    func deleteItem(pos : Int){
        listItem.remove(at: pos-1)
    }
    
    func paymentScreen(totalAmount:Int){
        var pay : String? = ""
        var test : Bool = false
        print("""
              Your Total Order : \(totalAmount)
              Please Enter Your Payment.
              Enter Your Amount Of Money :
              """, terminator: "")
        pay = readLine()
    
        while(!test){
    
            if let check = Int(pay ?? ""){
                if(Int(pay!)! >= totalAmount){
                    test = true
                }else if(Int(pay!)! == 0) {
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
        You Pay : \(Int(pay!)!) Your Change : \(Int(pay!)! - totalAmount)
        ENJOY YOUR MEAL!!!
        Press [return] to go back to main screen
        """)
    }
    
    
}
