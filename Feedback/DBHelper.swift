//
//  DBHelper.swift
//  Feedback
//
//  Created by Tommy Phan on 4/28/21.
//

import Foundation
import CoreData
import UIKit

class DBHelper
{
    static var inst = DBHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addData(object: [String:String])
    {
        let account = NSEntityDescription.insertNewObject(forEntityName: "Account", into: context!) as! Account
        
        account.username = object["username"]
        account.password = object["password"]
        
        do{
            try context?.save()
            print("data saved")
        }
        catch{
            print("data not saved")
        }
        
    }
    
    func addRateData(object: [String:String])
    {
        let account = NSEntityDescription.insertNewObject(forEntityName: "Review", into: context!) as! Review
        
        account.rating = object["rating"]
        
        do{
            try context?.save()
            print("data saved")
        }
        catch{
            print("data not saved")
        }
        
    }
    
    func getData() -> [Account]
    {
        
        var acc = [Account]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Account")
        
        do {
            acc = try context?.fetch(fetchReq) as! [Account]
        } catch{
            print("can not fetch any data")
        }
        
        return acc
        
    }
    
    func getRateData() -> [Review]
    {
        
        var acc = [Review]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Review")
        
        do {
            acc = try context?.fetch(fetchReq) as! [Review]
        } catch{
            print("can not fetch any data")
        }
        
        return acc
        
    }
    
    
}
