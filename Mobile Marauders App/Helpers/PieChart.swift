//
//  PieChart.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/22/21.
//

import SwiftUI

struct PieSliceData {
    var startAngle: Angle
    var endAngle: Angle
    var color: Color
    var text: String
}

struct PieSliceView : View {
    var pieSliceData : PieSliceData
    
    var midRadians : Double {
        return Double.pi / 2.0 - (pieSliceData.startAngle + pieSliceData.endAngle).radians / 2.0
    }
    
    var body : some View {
        GeometryReader { geometry in
            ZStack {
                Path { path in
                    let width : CGFloat = min(geometry.size.width, geometry.size.height)
                    let height = width
                    
                    let center = CGPoint(x: width/2, y: height/2)
                    
                    path.move(to: center)
                    
                    path.addArc(
                        center: center,
                        radius: width/2,
                        startAngle: Angle(degrees: -90.0) + pieSliceData.startAngle,
                        endAngle: Angle(degrees: -90.0) + pieSliceData.endAngle,
                        clockwise: false)
                }
                .fill(pieSliceData.color)
            }
            .shadow(radius: 2.0)
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct TableRows: View {
    var colors: [Color]
    var names: [String]
    var values: [String]
    var percents: [String]
    
    var body: some View {
        VStack{
            ForEach(0..<self.values.count){ i in
                HStack {
                    Text(self.names[i])
                        .padding(.leading, 10)
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("$\(self.values[i])")
                        Text(self.percents[i])
                            .foregroundColor(Color.gray)
                    }
                    .padding(.trailing, 10)
                }
                .padding(.bottom, 5)
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("Pink"), .white]), startPoint: .top, endPoint: .bottom))
                        .shadow(radius: 2, y:2))
    }
}

struct PieChart: View {
    public let values : [Double]
    public let colors : [Color]
    public let names : [String]
    public var backgroundColor: Color
    public let innerRadiusFraction: CGFloat
    
    var slices : [PieSliceData] {
        let sum = values.reduce(0, +)
        var endDeg: Double = 0
        var tempSlices: [PieSliceData] = []
        
        for (i, value) in values.enumerated() {
            let degrees: Double = value * 360 / sum
            tempSlices.append(PieSliceData(startAngle: Angle(degrees: endDeg), endAngle: Angle(degrees: endDeg + degrees), color: self.colors[i], text: String(format: "%.0f%%", value * 100 / sum)))
            endDeg += degrees
        }
        return tempSlices
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack{
                    ForEach(0..<self.values.count){ i in
                        PieSliceView(pieSliceData: self.slices[i])
                    }
                    .padding()
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    Circle()
                        .fill(self.backgroundColor)
                        .frame(width: geometry.size.width * innerRadiusFraction, height: geometry.size.height * innerRadiusFraction)
                    
                    VStack {
                        Text("Total")
                            .font(.title)
                            .foregroundColor(.black)
                        Text("$\(String(values.reduce(0,+)))")
                            .font(.title)
                            .foregroundColor(.gray)
                    }
                }
                TableRows(colors: self.colors, names: self.names, values: self.values.map { String($0) }, percents: self.values.map { String(format: "%.2f%%", $0 * 100 / self.values.reduce(0, +)) })
                    .padding()
                Spacer()
            }
            .foregroundColor(Color.black)
        }
    }
}

struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        PieChart(values: [145, 500, 300, 450], colors: [Color("Pink"), Color("Red"), Color(.red), Color("Available")], names: ["House", "Bills", "Subscriptions", "Available"], backgroundColor: Color("Background"), innerRadiusFraction: 0.54)
    }
}
