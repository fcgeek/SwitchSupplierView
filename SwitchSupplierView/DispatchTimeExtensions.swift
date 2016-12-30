//
//  DispatchTimeExtensions.swift
//  MoeBuy
//
//  Created by liujianlin on 16/9/19.
//  Copyright © 2016年 xdream. All rights reserved.
//

import UIKit

extension DispatchTime {
    static func getTime(seconds: Double) -> DispatchTime {
        return DispatchTime.now() + seconds//Double(seconds * Double(NSEC_PER_SEC)) / Double(NSEC_PER_SEC)
    }
}
