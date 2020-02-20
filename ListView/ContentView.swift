//
//  ContentView.swift
//  ListView
//
//  Created by iMac on 20/02/20.
//  Copyright © 2020 Evince Develoment. All rights reserved.
//

import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}

struct ContentView: View {
    
    //R.K This is dummy data array
    let modelData : [Weather] = [Weather(image: "cloud.rain", temp: 21, city: "Mumbai"),Weather(image: "cloud.sun.rain", temp: 18, city: "Ahmedabad"),Weather(image: "sun.max", temp: 25, city: "Jaipur"),Weather(image: "cloud.sun", temp: 23, city: "Manali")]
    
    var body: some View {
            //R.K List view of data
            List(modelData){ weather in
                HStack{
                    Image(systemName: weather.image).frame(width:50, height:10,alignment: .leading)
                    Text("\(weather.temp)º").frame(width:50, height:10,alignment: .leading)
                    VStack{
                        Text(weather.city)
                    }
                }.font(.title)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
