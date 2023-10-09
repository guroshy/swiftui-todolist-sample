//
//  ContentView.swift
//  ToDo
//
//  Created by guroshy on 2023/10/09.
//

import SwiftUI

struct ContentView: View {
    @State var taskDate = [(title: "ジョギングする", completed: false),
                           (title: "お花に水をやる", completed: false),
                           (title: "部屋の掃除をする", completed: false),
                           (title: "本を読む", completed: false),
                           (title: "トイレ掃除", completed: false)]
    
    var body: some View {
        NavigationStack {
            List(0..<taskDate.count, id: \.self) { index in
                Button{
                    taskDate[index].completed = true
                } label: {
                    HStack{
                        if taskDate[index] .completed == true {
                            Image(systemName: "checkmark.circle.fill")
                        } else{
                            Image(systemName: "circle")
                        }
                        Text(taskDate[index].title)
                    }
                }
                .foregroundColor(.black)
            }
            .navigationTitle("Todoリスト")
        }
    }
}

#Preview {
    ContentView()
}
