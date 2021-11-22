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
                
                Text(pieSliceData.text)
                    .foregroundColor(.white)
                    .position(
                        x: geometry.size.width * 0.5 * CGFloat(1.0 + 0.78 * cos(self.midRadians)),
                        y: geometry.size.height * 0.5 * CGFloat(1.0 - 0.78 * sin(self.midRadians))
                    )
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct PieChart: View {
    public let values : [Double]
    public let colors : [Color]
    
    public var backgroundColor: Color
    
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
            ZStack{
                ForEach(0..<self.values.count){ i in
                    PieSliceView(pieSliceData: self.slices[i])
                }
                .frame(width: geometry.size.width, height: geometry.size.width)
            }
            .background(self.backgroundColor)
            .foregroundColor(Color.white)
        }
    }
}

struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        PieChart(values: [1300, 500, 300], colors: [Color.blue, Color.green, Color.orange], backgroundColor: Color(red: 21 / 255, green: 24 / 255, blue: 30 / 255, opacity: 1.0))
    }
}
