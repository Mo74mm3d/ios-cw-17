//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل
var people = [
    UserCovidInfo(fullName: "Mohammed Alqattan", area: "Salwa", numberOfDoses: 2),
    UserCovidInfo(fullName: "Abdullah", area: "Zahra", numberOfDoses: 2),
    UserCovidInfo(fullName: "Khaled", area: "Adan", numberOfDoses: 3),
    UserCovidInfo(fullName: "Ahmad", area: "Bayan", numberOfDoses: 0),
    UserCovidInfo(fullName: "Jasem", area: "Shuwaikh", numberOfDoses: 1),
    UserCovidInfo(fullName: "Talal", area: "Mishrif", numberOfDoses: 2),
    UserCovidInfo(fullName: "Adnan", area: "Sabah Al Salem", numberOfDoses: 3),
    UserCovidInfo(fullName: "Mahdi", area: "Abdullah Al Mubarak", numberOfDoses: 3),
    UserCovidInfo(fullName: "Yousef", area: "Salwa", numberOfDoses: 2),
    UserCovidInfo(fullName: "Abdulrazaq", area: "Hawally", numberOfDoses: 0)
]



struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                // name of new cases
                List(people, id: \.id) { i in
                    VStack{
                        
                        Text("Full name: \(i.fullName)")
                            .fontWeight(.semibold)
                        Text("Area: \(i.area)")
                            .fontWeight(.semibold)
                        Text("Number of Doses: \(i.numberOfDoses)")
                            .fontWeight(.semibold)
                        Divider()
                        
                    }
                }
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






