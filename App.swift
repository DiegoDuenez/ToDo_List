//
//  App.swift
//  TodoList_Diego5B
//
//  Created by Mac10 on 16/02/21.
//  Copyright © 2021 utt. All rights reserved.
//

import UIKit

class App: NSObject {
    
    static let shared = App()
    var tasks = [Task]()
    let defaults = UserDefaults.standard
    
   
}
