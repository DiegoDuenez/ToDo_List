//
//  Task.swift
//  TodoList_Diego5B
//
//  Created by Mac10 on 16/02/21.
//  Copyright © 2021 utt. All rights reserved.
//

import UIKit

class Task: Codable {

    var displayName: String
    
    public private(set) var done: Bool = false
    
    init(_ displayName: String){
        
        self.displayName = displayName
     
        
    }
    
    func add(){
        App.shared.tasks.append(self)
        
        let encoder = JSONEncoder()
        
        guard let data = try? encoder.encode(App.shared.tasks) else{
            return
        }
        
        App.shared.defaults.setValue(data, forKey:"tasks")
        App.shared.defaults.synchronize()
        
    }
    
    func taskWasDone(index: Int){
        self.done = true
        App.shared.tasks = Task.all()
        if index < App.shared.tasks.count{
            App.shared.tasks[index] = self
            
            let encoder = JSONEncoder()
            guard let data = try?
                encoder.encode(App.shared.tasks)else{
                    return
            }
            App.shared.defaults.setValue(data, forKey: "tasks")
            App.shared.defaults.synchronize()
        }
        else{
            print("El indice esta fuera del rango")
        }
    }
    
    static func all() -> [Task]{
        
        if case App.shared.defaults.object(forKey: "tasks") as? Data {
            let decoder = JSONDecoder()
            let tasks = decoder.decode([Task].self, from: Data)
            
        } else {return [Task]() }
        return tasks
        
    }
    
    
    
}
