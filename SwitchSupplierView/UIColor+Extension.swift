//
//  UIColor+CIExtension.swift
//  CommerceInteraction
//
//  Created by liujianlin on 16/4/14.
//  Copyright © 2016年 ocm. All rights reserved.
//

import UIKit

extension UIColor {
    /**
     根据rgb值直接返回uicolor
     参数值要在0-255之间
     */
    convenience init(r:Int,g:Int,b:Int){
        self.init(red:CGFloat(r)/255.0, green:CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
    }
    convenience init(r:Int,g:Int,b:Int,alpha:CGFloat){
        self.init(red:CGFloat(r)/255.0, green:CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: alpha)
    }
    
    
    class func black(withAlpha alpha:CGFloat)->UIColor{
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }
    class func white(withAlpha alpha:CGFloat)->UIColor{
        return UIColor(red: 1, green: 1, blue: 1, alpha: alpha)
    }
    
    class var main:UIColor { return red1 }
    //MARK: - blue
    class var blue1:UIColor { return UIColor(r: 186, g: 207, b: 223) }
    class var blue2:UIColor { return UIColor(r: 118, g: 148, b: 179) }
    class var blue3:UIColor { return UIColor(r: 237, g: 251, b: 254) }
    class var blue4:UIColor { return UIColor(r: 165, g: 190, b: 209) }
    class var blue5:UIColor { return UIColor(r: 118, g: 148, b: 179, alpha: 0.6) }
    class var blue6:UIColor { return UIColor(r: 0, g: 160, b: 233) }
    class var blue7:UIColor { return UIColor(r: 121, g: 220, b: 242) }
    class var blue8:UIColor { return UIColor(r: 0, g: 118, b: 255) }
    class var blue9:UIColor { return UIColor(r: 164, g: 198, b: 236) }
    class var blue10:UIColor { return UIColor(r: 30, g: 74, b: 125) }
    class var blue11:UIColor { return UIColor(r: 211, g: 228, b: 238) }
    class var blue12:UIColor { return UIColor(r: 168, g: 183, b: 198) }
    
    //MARK: - gray
    class var gray1:UIColor { return UIColor(r: 216, g: 223, b: 228) }
    class var gray2:UIColor { return UIColor(r: 192, g: 207, b: 214) }
    class var gray3:UIColor { return UIColor(r: 202, g: 208, b: 216) }
    
    //MARK: - yellow
    class var yellow1:UIColor { return UIColor(r: 255, g: 212, b: 59) }
    
    //MARK: - white
    class var white1:UIColor { return UIColor(r: 255, g: 246, b: 243) }
    
    //MARK: - red
    class var red1:UIColor { return UIColor(red: 255.0 / 255.0, green: 80.0 / 255.0, blue: 48.0 / 255.0, alpha: 1.0) }
    class var red2:UIColor { return UIColor(r: 255, g: 154, b: 154) }
    class var red3:UIColor { return UIColor(r: 255, g: 168, b: 149) }
    class var red4:UIColor { return UIColor(r: 232, g: 166, b: 166) }
    class var red5:UIColor { return UIColor(r: 255, g: 203, b: 188) }
    class var red1Active:UIColor { return UIColor(r: 255, g: 101, b: 74) }
    
    class var shadow:UIColor { return UIColor.black(withAlpha: 0.1) }
    class var placeholder:UIColor { return UIColor(r: 235, g:240, b:243) }
    class var searchBackgroud:UIColor { return  UIColor(r: 235, g: 240, b: 247) }
    class var headtext:UIColor { return UIColor(red: 118.0 / 255.0, green: 148.0 / 255.0, blue: 179.0 / 255.0, alpha: 1.0) }
    class var headBG:UIColor { return UIColor(red: 237.0 / 255.0, green: 251.0 / 255.0, blue: 254.0 / 255.0, alpha: 1.0) }
    class var h1:UIColor { return UIColor(red: 100.0 / 255.0, green: 121.0 / 255.0, blue: 143.0 / 255.0, alpha: 1.0) }
    class var h2:UIColor { return UIColor(red: 168.0 / 255.0, green: 183.0 / 255.0, blue: 198.0 / 255.0, alpha: 1.0) }
    class var tag:UIColor { return UIColor(red: 166.0 / 255.0, green: 210.0 / 255.0, blue: 232.0 / 255.0, alpha: 1.0) }
    class var paleGrey:UIColor { return UIColor(red: 247.0 / 255.0, green: 249.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0) }
    class var cloudyBlue50:UIColor { return UIColor(red: 192.0 / 255.0, green: 207.0 / 255.0, blue: 214.0 / 255.0, alpha: 0.5) }
    
    func getAlphaColor(_ alpha: CGFloat) -> UIColor {
        let color = CIColor(color: self)
        return UIColor(red: color.red, green: color.green, blue: color.blue, alpha: alpha)
    }
}
