//  ContentView.swift
//  swiftUIFirstMeet
//
//  Created by 林祐辰 on 2020/4/2.
//  Copyright © 2020 smirkiiiv. All rights reserved.
import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        
let view = UIView()
        
let backgroundSize = CGRect(x:10,y: 0, width:350, height:720)
let background = UIView(frame:backgroundSize)
background.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
let whiteColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
let blueColor = UIColor(red: 50/255, green: 109/255, blue: 179/255, alpha: 1)
let yellowColor = UIColor(red: 243/255, green: 194/255, blue: 0/255, alpha: 1)
let redColor = (UIColor(red: 221/255, green: 0/255, blue: 41/255, alpha: 1))
let playStationBox = UIView(frame: CGRect(x:25,y: 10, width:300, height:230))
        
let playstationRed = UIView(frame:backgroundSize)
let playstationBlueTri = UIView(frame:backgroundSize)
let playstationBlueCircle = UIView(frame:backgroundSize)
let playstationGreen = UIView(frame:backgroundSize)
let playstationYellow = UIView(frame:backgroundSize)
let playstationYellowCircle = UIView(frame:backgroundSize)
let whitePatchOne = UIView(frame:backgroundSize)
let whitePatchTwo = UIView(frame:backgroundSize)
let whitePatchThree = UIView(frame:backgroundSize)
let whitePatchFour = UIView(frame:backgroundSize)
let whitePatchFive = UIView(frame:backgroundSize)
let redOval = UIView(frame:backgroundSize)
 
playStationBox.backgroundColor = whiteColor
playstationRed.backgroundColor = redColor
redOval.backgroundColor = redColor
playstationBlueTri.backgroundColor = blueColor
playstationBlueCircle.backgroundColor = blueColor
playstationGreen.backgroundColor = (UIColor(red: 4/255, green: 169/255, blue: 158/255, alpha: 1))
playstationYellow.backgroundColor = yellowColor
playstationYellowCircle.backgroundColor = yellowColor
whitePatchOne.backgroundColor = whiteColor
whitePatchTwo.backgroundColor = whiteColor
whitePatchThree.backgroundColor = whiteColor
whitePatchFour.backgroundColor = whiteColor
whitePatchFive.backgroundColor = whiteColor
        
let blueShape = UIBezierPath()
blueShape.move(to: CGPoint(x:120.979,y:129))
blueShape.addLine(to: CGPoint(x:125,y:142.8))
blueShape.addLine(to: CGPoint(x:99.8,y:136))
blueShape.close()
        
let blueTriangleShape = CAShapeLayer()
blueTriangleShape.path = blueShape.cgPath
playstationBlueTri.layer.mask = blueTriangleShape
        
let blueArcPath = UIBezierPath()
blueArcPath.move(to:CGPoint(x:159,y:157.8) )
blueArcPath.addCurve(to:CGPoint(x:246,y:186),controlPoint1: CGPoint(x:211.46, y:131 ),controlPoint2: CGPoint(x:299.029,y:164.477))
        
let blueArcShape = CAShapeLayer()
blueArcShape.path = blueArcPath.cgPath
playstationBlueCircle.layer.mask = blueArcShape
        
let greenShape = UIBezierPath()
greenShape.move(to: CGPoint(x:100.945,y:135.41))
greenShape.addLine(to: CGPoint(x:125.37,y:143))
greenShape.addLine(to: CGPoint(x:125.37,y:153))
greenShape.addLine(to: CGPoint(x:76.476,y:169))
greenShape.addLine(to: CGPoint(x:40.612,y:155))
greenShape.close()
greenShape.move(to: CGPoint(x:127.0298,y:164.910))
greenShape.addLine(to: CGPoint(x:127.179,y:188.940))
greenShape.addLine(to: CGPoint(x:96.5,y:176.223))
greenShape.close()
greenShape.move(to: CGPoint(x:159,y:157.8))
greenShape.addLine(to: CGPoint(x:195.5,y:168.5))
greenShape.addLine(to: CGPoint(x:159,y:182.5))
greenShape.close()
greenShape.move(to: CGPoint(x:160,y:198))    //左下
greenShape.addLine(to: CGPoint(x:190.493,y:207.6)) // 右下
greenShape.addLine(to: CGPoint(x:246,y:186))  // 右上
greenShape.addLine(to: CGPoint(x:216,y:174.5)) // 左上
greenShape.close()
        
let anyGreenShape = CAShapeLayer()
anyGreenShape.path = greenShape.cgPath
playstationGreen.layer.mask = anyGreenShape

let redShape = UIBezierPath()
redShape.move(to: CGPoint(x:162.895,y:219))
redShape.addLine(to: CGPoint(x:121.179,y:206))
redShape.addLine(to: CGPoint(x:121.179,y:20.0298))
redShape.addLine(to: CGPoint(x:183.209,y:39.55))
redShape.addLine(to: CGPoint(x:179.209,y:60.656))
redShape.addLine(to: CGPoint(x:162.895,y:60.656))
redShape.close()

let standRedShape = CAShapeLayer()
standRedShape.path = redShape.cgPath
playstationRed.layer.mask = standRedShape

let redOvalPath = UIBezierPath()
redOvalPath.move(to:CGPoint(x:179.209,y:38.9) )
        redOvalPath.addCurve(to:CGPoint(x:179.209,y:140),controlPoint1: CGPoint(x:255.626, y:52.5),controlPoint2: CGPoint(x:245.074,y:165))
        
let redOvalShape = CAShapeLayer()
redOvalShape.path = redOvalPath.cgPath
redOval.layer.mask = redOvalShape
        
let yellowShape = UIBezierPath()
yellowShape.move(to: CGPoint(x:153,y:194))
yellowShape.addLine(to: CGPoint(x:192.5,y:207))
yellowShape.addLine(to: CGPoint(x:163,y:219))
yellowShape.close()
                
let yellowTriShape = CAShapeLayer()
yellowTriShape.path = yellowShape.cgPath
playstationYellow.layer.mask = yellowTriShape
         
let yellowArcPath = UIBezierPath()
yellowArcPath.move(to: CGPoint(x:41.3,y:154.481))
yellowArcPath.addCurve(to:CGPoint(x:147.068,y:187.940),
controlPoint1: CGPoint(x: -15, y: 188.238),
controlPoint2: CGPoint(x: 78.865, y: 200.119))

let yellowArcShape = CAShapeLayer()
yellowArcShape.path = yellowArcPath.cgPath
playstationYellowCircle.layer.mask = yellowArcShape
        
let patchOnePath = UIBezierPath()
patchOnePath.move(to: CGPoint(x:97.485,y:172.5))
patchOnePath.addLine(to: CGPoint(x:77,y:179.042))
patchOnePath.addLine(to: CGPoint(x:57,y:171.75))
patchOnePath.addLine(to: CGPoint(x:81.5,y:163.996))

patchOnePath.close()
 
let patchOneShape = CAShapeLayer()
patchOneShape.path = patchOnePath.cgPath
whitePatchOne.layer.mask = patchOneShape

let patchSecondPath = UIBezierPath()
patchSecondPath.move(to: CGPoint(x:57.5,y:171.5))
patchSecondPath.addCurve(to:CGPoint(x:77,y:179.042),
controlPoint1: CGPoint(x: 49.544, y: 177.522),
controlPoint2: CGPoint(x: 59.685, y: 183.834))

let patchSecondShape = CAShapeLayer()
patchSecondShape.path = patchSecondPath.cgPath
whitePatchTwo.layer.mask = patchSecondShape

let patchThreePath = UIBezierPath()
patchThreePath.move(to: CGPoint(x:183,y:169.5))
patchThreePath.addLine(to: CGPoint(x:199.5,y:163.5))
patchThreePath.addLine(to: CGPoint(x:218,y:169.8))
patchThreePath.addLine(to: CGPoint(x:202.5,y:176))

patchThreePath.close()

let patchThreeShape = CAShapeLayer()
patchThreeShape.path = patchThreePath.cgPath
whitePatchThree.layer.mask = patchThreeShape

let patchFourPath = UIBezierPath()
patchFourPath.move(to: CGPoint(x:199,y:163.5))
patchFourPath.addCurve(to:CGPoint(x:218,y:170),
controlPoint1: CGPoint(x: 202.836, y: 163),
controlPoint2: CGPoint(x: 216.268, y: 162))

let patchFourShape = CAShapeLayer()
patchFourShape.path = patchFourPath.cgPath
whitePatchFour.layer.mask = patchFourShape
 
let degree = CGFloat.pi*180
        
let patchFivePath = UIBezierPath(arcCenter: CGPoint(x:161,y:61.656), radius: 7.9, startAngle: 0, endAngle: degree/180*190, clockwise: true)
        
let patchFiveShape = CAShapeLayer()
patchFiveShape.path = patchFivePath.cgPath
whitePatchFive.layer.mask = patchFiveShape
        
let nintendoBox = UIView(frame: CGRect(x:25,y:250, width:300, height:230))
nintendoBox.backgroundColor = whiteColor
        
let nintendo = UIView(frame: CGRect(x:25,y:300, width:200, height:200))
        
nintendo.backgroundColor = redColor
        
let nintendoShape = UIBezierPath()
nintendoShape.move(to: CGPoint(x:60,y:330))
nintendoShape.addLine(to: CGPoint(x:140,y:360))
nintendoShape.move(to: CGPoint(x:140,y:360))
nintendoShape.close()
        
let showNintendo = CAShapeLayer()
showNintendo.path = nintendoShape.cgPath
nintendo.layer.mask = showNintendo
 
 let xboxBox = UIView(frame: CGRect(x:25,y: 490, width:300, height:230))
 xboxBox.backgroundColor = whiteColor
        
view.addSubview(background)
        
background.addSubview(playStationBox)
playStationBox.addSubview(playstationGreen)
playStationBox.addSubview(playstationYellow)
playStationBox.addSubview(playstationYellowCircle)
playstationYellowCircle.addSubview(whitePatchOne)
playstationYellowCircle.addSubview(whitePatchTwo)
playStationBox.addSubview(playstationBlueTri)
playStationBox.addSubview(playstationBlueCircle)
playstationBlueCircle.addSubview(whitePatchThree)
playstationBlueCircle.addSubview(whitePatchFour)
playStationBox.addSubview(playstationRed)
playstationRed.addSubview(whitePatchFive)
playStationBox.addSubview(redOval)
        
background.addSubview(nintendoBox)
nintendoBox.addSubview(nintendo)
background.addSubview(xboxBox)

        
return view
}
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
