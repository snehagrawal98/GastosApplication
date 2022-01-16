//
//  PieChartWindow.swift
//  Gastos_user_mvp1
//
//  Created by ehsan sat on 10/13/21.
//

import SwiftUI

struct PieChartWindow: View {
    
    var body: some View {
        
        GeometryReader(content: { geo in
            
            Beverages(geo: geo, showSliceOut: true, startAng: Angle(degrees: 0), endAng: Angle(degrees: -40))
            
            Clothing(geo: geo, showSliceOut: false, startAng: Angle(degrees: -40), endAng: Angle(degrees: -80))
            
            SalonAndSpa(geo: geo, showSliceOut: false, startAng: Angle(degrees: -80), endAng: Angle(degrees: -120))
            
            Store(geo: geo, showSliceOut: false, startAng: Angle(degrees: -120), endAng: Angle(degrees: -150))
            
            Health(geo: geo, showSliceOut: false, startAng: Angle(degrees: -150), endAng: Angle(degrees: -200))
            
            Others(geo: geo, showSliceOut: false, startAng: Angle(degrees: -200), endAng: Angle(degrees: -230))
            
            Food(geo: geo, showSliceOut: false, startAng: Angle(degrees: -230), endAng: Angle(degrees: -360))
                
            
        })
    }
}

struct Beverages: View {
    var geo: GeometryProxy
    var showSliceOut: Bool
    var startAng: Angle
    var endAng: Angle
    private var midAng: CGFloat {
        return CGFloat(-(endAng.degrees - startAng.degrees) / 2 )
    }
    var pad: CGFloat = 15
    
    var body: some View {
        Path({ path in
            if showSliceOut == true {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: (Constants.sW / 4) + pad, startAngle: startAng, endAngle: endAng, clockwise: true)

            } else {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: Constants.sW / 4, startAngle: startAng, endAngle: endAng, clockwise: true)
            }
        })
        .fill(Color.blue)
        .shadow(color: showSliceOut ? .black : .clear, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        .zIndex(5)
        
        Text("\(Int(-(endAng.degrees - startAng.degrees) / 3.60 ))%")
            .position(x: (geo.size.width / 2) + (cos(midAng) * (Constants.sW / 4)), y: (geo.size.height / 2) - (sin(midAng) * (Constants.sW / 4)))
            .opacity(showSliceOut ? 1 : 0)
            .zIndex(5)

    }
}

struct Clothing: View {
    var geo: GeometryProxy
    var showSliceOut: Bool
    var startAng: Angle
    var endAng: Angle
    private var midAng: CGFloat {
        return CGFloat(-(endAng.degrees - startAng.degrees) / 2 )
    }
    var pad: CGFloat = 20
    
    var body: some View {
        Path({ path in
            if showSliceOut == true {
                path.move(to: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)))
                path.addArc(center: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)), radius: (Constants.sW / 4) + 10, startAngle: startAng, endAngle: endAng, clockwise: true)

            } else {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: Constants.sW / 4, startAngle: startAng, endAngle: endAng, clockwise: true)
            }
        })
        .fill(Color.green)
        .shadow(color: showSliceOut ? .black : .clear, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
        Text("\(Int(-(endAng.degrees - startAng.degrees) / 3.60 ))%")
            .position(x: (geo.size.width / 2) + (sin(midAng) * (Constants.sW / 4)), y: (geo.size.height / 2) - (cos(midAng) * (Constants.sW / 4)))
            .opacity(showSliceOut ? 1 : 0)
    }
}

struct SalonAndSpa: View {
    var geo: GeometryProxy
    var showSliceOut: Bool
    var startAng: Angle
    var endAng: Angle
    private var midAng: CGFloat {
        return CGFloat(-(endAng.degrees - startAng.degrees) / 2 )
    }
    var pad: CGFloat = 20
    
    var body: some View {
        Path({ path in
            if showSliceOut == true {
                path.move(to: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)))
                path.addArc(center: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)), radius: (Constants.sW / 4) + 10, startAngle: startAng, endAngle: endAng, clockwise: true)

            } else {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: Constants.sW / 4, startAngle: startAng, endAngle: endAng, clockwise: true)
            }
        })
        .fill(Color(.systemRed))
        .shadow(color: showSliceOut ? .black : .clear, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
        Text("\(Int(-(endAng.degrees - startAng.degrees) / 3.60 ))%")
            .position(x: (geo.size.width / 2) + (sin(midAng) * (Constants.sW / 4)), y: (geo.size.height / 2) - (cos(midAng) * (Constants.sW / 4)))
            .opacity(showSliceOut ? 1 : 0)
    }
}

struct Store: View {
    var geo: GeometryProxy
    var showSliceOut: Bool
    var startAng: Angle
    var endAng: Angle
    private var midAng: CGFloat {
        return CGFloat(-(endAng.degrees - startAng.degrees) / 2 )
    }
    var pad: CGFloat = 20
    
    var body: some View {
        Path({ path in
            if showSliceOut == true {
                path.move(to: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)))
                path.addArc(center: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)), radius: (Constants.sW / 4) + 10, startAngle: startAng, endAngle: endAng, clockwise: true)

            } else {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: Constants.sW / 4, startAngle: startAng, endAngle: endAng, clockwise: true)
            }
        })
        .fill(Color(.systemOrange))
        .shadow(color: showSliceOut ? .black : .clear, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
        Text("\(Int(-(endAng.degrees - startAng.degrees) / 3.60 ))%")
            .position(x: (geo.size.width / 2) + (sin(midAng) * (Constants.sW / 4)), y: (geo.size.height / 2) - (cos(midAng) * (Constants.sW / 4)))
            .opacity(showSliceOut ? 1 : 0)
    }
}

struct Health: View {
    var geo: GeometryProxy
    var showSliceOut: Bool
    var startAng: Angle
    var endAng: Angle
    private var midAng: CGFloat {
        return CGFloat(-(endAng.degrees - startAng.degrees) / 2 )
    }
    var pad: CGFloat = 20
    
    var body: some View {
        Path({ path in
            if showSliceOut == true {
                path.move(to: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)))
                path.addArc(center: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)), radius: (Constants.sW / 4) + 10, startAngle: startAng, endAngle: endAng, clockwise: true)

            } else {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: Constants.sW / 4, startAngle: startAng, endAngle: endAng, clockwise: true)
            }
        })
        .fill(Color(.systemPurple))
        .shadow(color: showSliceOut ? .black : .clear, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
        Text("\(Int(-(endAng.degrees - startAng.degrees) / 3.60 ))%")
            .position(x: (geo.size.width / 2) + (sin(midAng) * (Constants.sW / 4)), y: (geo.size.height / 2) - (cos(midAng) * (Constants.sW / 4)))
            .opacity(showSliceOut ? 1 : 0)
    }
}

struct Others: View {
    var geo: GeometryProxy
    var showSliceOut: Bool
    var startAng: Angle
    var endAng: Angle
    private var midAng: CGFloat {
        return CGFloat(-(endAng.degrees - startAng.degrees) / 2 )
    }
    var pad: CGFloat = 20
    
    var body: some View {
        Path({ path in
            if showSliceOut == true {
                path.move(to: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)))
                path.addArc(center: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)), radius: (Constants.sW / 4) + 10, startAngle: startAng, endAngle: endAng, clockwise: true)

            } else {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: Constants.sW / 4, startAngle: startAng, endAngle: endAng, clockwise: true)
            }
        })
        .fill(Color(.systemTeal))
        .shadow(color: showSliceOut ? .black : .clear, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
        Text("\(Int(-(endAng.degrees - startAng.degrees) / 3.60 ))%")
            .position(x: (geo.size.width / 2) + (sin(midAng) * (Constants.sW / 4)), y: (geo.size.height / 2) - (cos(midAng) * (Constants.sW / 4)))
            .opacity(showSliceOut ? 1 : 0)
    }
}

struct Food: View {
    var geo: GeometryProxy
    var showSliceOut: Bool
    var startAng: Angle
    var endAng: Angle
    private var midAng: CGFloat {
        return CGFloat(-(endAng.degrees - startAng.degrees) / 2 )
    }
    var pad: CGFloat = 20
    
    var body: some View {
        Path({ path in
            if showSliceOut == true {
                path.move(to: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)))
                path.addArc(center: CGPoint(x: (geo.size.width / 2) - (cos(-CGFloat(endAng.degrees)) * pad), y: (geo.size.height / 2) - (sin(-CGFloat(endAng.degrees)) * pad)), radius: (Constants.sW / 4) + 10, startAngle: startAng, endAngle: endAng, clockwise: true)

            } else {
                path.move(to: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2))
                path.addArc(center: CGPoint(x: geo.size.width / 2, y: geo.size.height / 2), radius: Constants.sW / 4, startAngle: startAng, endAngle: endAng, clockwise: true)
            }
        })
        .fill(Color.yellow)
        .shadow(color: showSliceOut ? .black : .clear, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        
        Text("\(Int(-(endAng.degrees - startAng.degrees) / 3.60 ))%")
            .position(x: (geo.size.width / 2) + (sin(midAng) * (Constants.sW / 4)), y: (geo.size.height / 2) - (cos(midAng) * (Constants.sW / 4)))
            .opacity(showSliceOut ? 1 : 0)
    }
}



struct PieChartWindow_Previews: PreviewProvider {
    static var previews: some View {
        PieChartWindow()
    }
}
