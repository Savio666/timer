//
//  ContentView.swift
//  timer
//
//  Created by Ip Si Hou on 07/01/2021.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var stopWatch = StopWatch()
    var body: some View {
        VStack {
            Text(String(format: "%.1f", stopWatch.timepassed))
                .font(Font.largeTitle)
                .padding()
            Button(action:{self.stopWatch.start()}){
                TimeButton(label:"Start")
            }
            Button(action:{self.stopWatch.stop()}){
                TimeButton(label:"Stop")
            }
            Button(action:{self.stopWatch.reset()}){
                TimeButton(label:"Reset")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
    }
}

struct TimeButton: View{
    let label : String
    var body: some View{
        Text(label)
            .font(.system(size:20 , weight: .semibold, design: .rounded))
            .frame(width:200, height: 60)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 16 , style: .continuous))
            .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) , radius: 20, x: 20, y:20)
            .padding()
    }
}


