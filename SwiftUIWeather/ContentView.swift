//
//  ContentView.swift
//  SwiftUIWeather
//
//  Created by Gaurab Subedi on 22/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:[.blue, Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Chauthe, Pokhara")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 5){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("45°")
                        .font(.system(size: 76, weight: .medium))
                        .foregroundStyle(.white)
                }
                .padding(.bottom,40)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeeks: "TUE", imageName: "cloud.sun.fill", temperature: "34°")
                    WeatherDayView(dayOfWeeks: "WED", imageName: "sun.max.fill", temperature: "34°")

                    WeatherDayView(dayOfWeeks: "THU", imageName: "wind.snow", temperature: "34°")

                    WeatherDayView(dayOfWeeks: "FRI", imageName: "sunset.fill", temperature: "34°")

                    WeatherDayView(dayOfWeeks: "STU", imageName: "snow", temperature: "34°")

                    
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeeks: String
    var imageName: String
    var temperature: String
    
    var body: some View {
        VStack{
            Text(dayOfWeeks)
                .font(.system(size: 25, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)")
                .font(.system(size: 25, weight: .medium))
                .foregroundStyle(.white)
            
        }
    }
}
