////
////  BarChartsWindow.swift
////  Gastos_user_mvp1
////
////  Created by ehsan sat on 10/13/21.
////
//
//import SwiftUI
//
//struct BarChartsWindow: View {
//    
//    var body: some View {
//        
//        GeometryReader(content: { geometry in
//            
//            
//            
//            // below line, first and second week
//            Group {
//                
//                Path({ path in
//                    path.move(to: CGPoint(x: 0, y: geometry.size.height - 50))
//                    path.addLine(to: CGPoint(x: geometry.size.width, y: geometry.size.height - 50))
//                })
//                .stroke(Color.black, lineWidth: 2)
//                .zIndex(5)
//
//                WeekOne(geo: geometry, firstBar: 30, secondBar: 80)
//
//                
////                Path({ path in
////                    path.move(to: CGPoint(x: 0, y: geometry.size.height - 50))
////
////                    path.addRect(CGRect(x: 0, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -30))
////                })
////                .fill(Color.orange)
////
////                Text("30")
////                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
////                    .position(x: geometry.size.width / 11 * (1/2), y: (geometry.size.height - 50) - 40)
////
////
////
////                Path({ path in
////                    path.addRect(CGRect(x: geometry.size.width  / 11, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -80))
////                })
////                .fill(Color.pink)
////
////                Text("80")
////                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
////                    .position(x: geometry.size.width / 11 * (3/2), y: (geometry.size.height - 50) - 90)
//            
//                Path({ path in
//                    path.addRect(CGRect(x: geometry.size.width * 3 / 11, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -30))
//                })
//                .fill(Color.orange)
//                
//                Text("30")
//                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .position(x: geometry.size.width / 11 * (7/2), y: (geometry.size.height - 50) - 40)
//                
//                Path({ path in
//                    path.addRect(CGRect(x: geometry.size.width * 4 / 11, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -80))
//
//                })
//                .fill(Color.pink)
//                
//                Text("80")
//                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .position(x: geometry.size.width / 11 * (9/2), y: (geometry.size.height - 50) - 90)
//
//            }
//            
//            
//
//            // third and forth week
//            Group {
//                Path({ path in
//                    path.addRect(CGRect(x: geometry.size.width * 6 / 11, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -30))
//                    
//                })
//                .fill(Color.orange)
//                
//                Text("30")
//                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .position(x: geometry.size.width / 11 * (13/2), y: (geometry.size.height - 50) - 40)
//                
//                Path({ path in
//                    path.addRect(CGRect(x: geometry.size.width * 7 / 11, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -80))
//
//                })
//                .fill(Color.pink)
//                
//                Text("80")
//                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .position(x: geometry.size.width / 11 * (15/2), y: (geometry.size.height - 50) - 90)
//                
//                
//                Path({ path in
//                    path.addRect(CGRect(x: geometry.size.width * 9 / 11, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -30))
//                    
//                })
//                .fill(Color.orange)
//                
//                Text("30")
//                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .position(x: geometry.size.width / 11 * (19/2), y: (geometry.size.height - 50) - 40)
//
//
//                Path({ path in
//                    path.addRect(CGRect(x: geometry.size.width * 10 / 11, y: geometry.size.height - 50, width: geometry.size.width / 11, height: -80))
//
//                })
//                .fill(Color.pink)
//                
//                Text("80")
//                    .frame(width: geometry.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                    .position(x: geometry.size.width / 11 * (21/2), y: (geometry.size.height - 50) - 90)
//                
//                
//            }
//            
//            HStack {
//                Text("Week 1")
//
//                Spacer()
//                Text("Week 2")
//
//                Spacer()
//                Text("Week 3")
//                
//                Spacer()
//                Text("Week 4")
//
//
//            }
//            .position(x: geometry.size.width / 2, y: geometry.size.height - 35)
//                
//
//        })
//        
//    }
//}
//
//struct WeekOne: View {
//    var geo: GeometryProxy
//    var firstBar: Int
//    var secondBar: Int
//    var barMultiPlier: CGFloat = 1
//    
//    var body: some View {
//        Path({ path in
//            path.move(to: CGPoint(x: 0, y: geo.size.height - 50))
//            path.addRect(CGRect(x: 0, y: geo.size.height - 50, width: geo.size.width / 11, height: -CGFloat(firstBar) * barMultiPlier))
//        })
//        .fill(Color.orange)
//        
//        Text("\(firstBar)")
//            .frame(width: geo.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            .position(x: geo.size.width / 11 * (1/2), y: (geo.size.height - 50) - 40)
//
//        Path({ path in
//            path.addRect(CGRect(x: geo.size.width  / 11, y: geo.size.height - 50, width: geo.size.width / 11, height: -CGFloat(secondBar) * barMultiPlier))
//        })
//        .fill(Color.pink)
//    
//        Text("\(secondBar)")
//            .frame(width: geo.size.width / 11, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            .position(x: geo.size.width / 11 * (3/2), y: (geo.size.height - 50) - 90)
//    }
//}
//
//
//struct BarChartsWindow_Previews: PreviewProvider {
//    static var previews: some View {
//        BarChartsWindow()
//    }
//}
