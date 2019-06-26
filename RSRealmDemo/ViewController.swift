//
//  ViewController.swift
//  RSRealmDemo
//
//  Created by Apple on 26/06/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import RealmSwift

@objcMembers class User: Object {
    dynamic var name: String?
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = User()
        user.name = "rajesh"
        
        let realm = try! Realm()
       try! realm.write {
            realm.add(user)
        }
        
        let result = realm.objects(User.self)
        print(result.first?.name)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

