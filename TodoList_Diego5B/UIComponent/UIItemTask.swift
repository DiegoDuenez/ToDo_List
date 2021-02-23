//
//  UIItemTask.swift
//  TodoList_Diego5B
//
//  Created by Mac10 on 16/02/21.
//  Copyright © 2021 utt. All rights reserved.
//

import UIKit

class UIItemTask: UIView {

    var task: Task
    var labelName: UILabel?
    var checkBoxDone: CheckBox?
    
    func build(task: Task){
        self.task = task
        self.tag = index(ofAccessibilityElement: <#T##Any#>)
        
        labelName = UILabel(frame: CGRect(x: 8, y: 0, width: self.frame.width-8, height: self.frame.height))
        
        labelName?.text = task.displayName
        
        checkBoxDone = CheckBox.init()
        let size = self.frame.height-10
        checkBoxDone?.frame = CGRect(x: labelName!.frame.width-size, y: 5 , width: size, height: size)
        
    }
    

}
