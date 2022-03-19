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
    UserCovidInfo(fullName: "Khaled", area: "Adan", numberOfDoses: 3)
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
                VStack{
        // الحالة الأولى
                // الاسم
                    Text("Name: \(people[0].fullName)")
                        .fontWeight(.semibold)
// المنطقة
                    Text("Area: \(people[0].area)")
                        .fontWeight(.semibold)
                    // عدد الجرعات
                    Text("Number of Doses: \(people[0].numberOfDoses)")
                        .fontWeight(.semibold)

                Divider()
                }
                VStack{
        // الحالة الثانية
                // الاسم
               Text("Name: \(people[1].fullName)")
                        .fontWeight(.semibold)
                // المنطقة
               Text("Area: \(people[1].area)")
                        .fontWeight(.semibold)
    // عدد الجرعات
               Text("Number of Doses: \(people[1].numberOfDoses)")
                        .fontWeight(.semibold)

                Divider()
                }
                VStack{
              // الحالة الثالثة
                      // الاسم
                     Text("Name: \(people[2].fullName)")
                        .fontWeight(.semibold)
                      // المنطقة
                     Text("Area: \(people[2].area)")
                        .fontWeight(.semibold)
          // عدد الجرعات
                     Text("Number of Doses: \(people[2].numberOfDoses)")
                        .fontWeight(.semibold)
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






