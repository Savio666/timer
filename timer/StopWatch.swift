//
//  StopWatch.swift
//  timer
//
//  Created by Ip Si Hou on 07/01/2021.
//

import SwiftUI

class StopWatch: ObservableObject{
    @Published var timepassed = 0.0
    var timer = Timer()
    
    func start(){
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ timer in
            self.timepassed = self.timepassed+0.1
        }
    }
    
    func stop(){
        timer.invalidate()
    }
    
    func reset(){
        timer.invalidate()
        timepassed=0
    }
    

}


