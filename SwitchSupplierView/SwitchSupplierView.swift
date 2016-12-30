//
//  SwitchSupplierView.swift
//  SwitchSupplierView
//
//  Created by liujianlin on 2016/12/30.
//  Copyright © 2016年 xdream. All rights reserved.
//

import UIKit
import EZSwiftExtensions

class SwitchSupplierView: UIView {
    //MARK: - 属性定义
    private var backgroundView: UIView = UIView()
    private var cursorLayer: CALayer = CALayer()
    private var cursorView: UIView = UIView()
    private var isAmazon = true
    private static let time1: CFTimeInterval = 0.1
    private static let time2: CFTimeInterval = 0.3
    private static let time3: CFTimeInterval = 0.1
    private static let itemWith: CGFloat = 28
    private static let itemScaleWith: CGFloat = 32
    private static let itemMargin: CGFloat = 2
    
    //MARK: - 生命周期
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: SwitchSupplierView.itemScaleWith*2-SwitchSupplierView.itemMargin, height: SwitchSupplierView.itemScaleWith))
        layer.cornerRadius = 4
        layer.masksToBounds = true
        backgroundColor = UIColor.placeholder
        setup(withView: backgroundView)
        setup(withView: cursorView, tintColor: UIColor.red1)
        setupMaskView()
        addTapGesture { [weak self](_) in
            guard let strong = self else { return }
            strong.isAmazon = !strong.isAmazon
            if strong.isAmazon {
                strong.amazonAnimation()
            } else {
                strong.surugaAnimation()
            }
        }
    }
    
    private func amazonAnimation() {
        CATransaction.begin()
        CATransaction.setAnimationDuration(SwitchSupplierView.time1)
        cursorLayer.frame.size.width = SwitchSupplierView.itemScaleWith
        cursorLayer.frame.origin.x = SwitchSupplierView.itemWith
        CATransaction.commit()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.getTime(seconds: SwitchSupplierView.time1/2), execute: { [weak self] in
            CATransaction.begin()
            CATransaction.setAnimationDuration(SwitchSupplierView.time2)
            self?.cursorLayer.frame.origin.x = SwitchSupplierView.itemMargin
            CATransaction.commit()
        })
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.getTime(seconds: (SwitchSupplierView.time1+SwitchSupplierView.time2)/2), execute: { [weak self] in
            CATransaction.begin()
            CATransaction.setAnimationDuration(SwitchSupplierView.time3)
            self?.cursorLayer.frame.size.width = SwitchSupplierView.itemWith
            CATransaction.commit()
        })
    }
    
    private func surugaAnimation() {
        CATransaction.begin()
        CATransaction.setAnimationDuration(SwitchSupplierView.time1)
        cursorLayer.frame.size.width = SwitchSupplierView.itemScaleWith
        CATransaction.commit()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.getTime(seconds: SwitchSupplierView.time1/2), execute: { [weak self] in
            CATransaction.begin()
            CATransaction.setAnimationDuration(SwitchSupplierView.time2)
            self?.cursorLayer.frame.origin.x = SwitchSupplierView.itemWith
            CATransaction.commit()
        })
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.getTime(seconds: (SwitchSupplierView.time1+SwitchSupplierView.time2)/2), execute: { [weak self] in
            CATransaction.begin()
            CATransaction.setAnimationDuration(SwitchSupplierView.time3)
            self?.cursorLayer.frame.origin.x = SwitchSupplierView.itemScaleWith
            self?.cursorLayer.frame.size.width = SwitchSupplierView.itemWith
            CATransaction.commit()
        })
    }
    
    private func setup(withView view: UIView, tintColor: UIColor = UIColor.gray3) {
        view.frame = bounds
        let amazonImageView = UIImageView(image: #imageLiteral(resourceName: "imgAgentAmazon").withColor(tintColor))
        amazonImageView.frame = CGRect(x: SwitchSupplierView.itemMargin, y: SwitchSupplierView.itemMargin, width: SwitchSupplierView.itemWith, height: SwitchSupplierView.itemWith)
        view.addSubview(amazonImageView)
        let surugaImageView = UIImageView(image: #imageLiteral(resourceName: "imgAgentSuruga").withColor(tintColor))
        surugaImageView.frame = CGRect(x: SwitchSupplierView.itemScaleWith, y: SwitchSupplierView.itemMargin, width: SwitchSupplierView.itemWith, height: SwitchSupplierView.itemWith)
        view.addSubview(surugaImageView)
        addSubview(view)
    }
    
    private func setupMaskView() {
        cursorLayer.backgroundColor = UIColor.white.cgColor
        cursorLayer.frame = CGRect(x: 2, y: 2, width: 28, height: 28)
        cursorLayer.masksToBounds = true
        cursorLayer.cornerRadius = 3
        cursorView.backgroundColor = UIColor.white
        cursorView.layer.mask = cursorLayer
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
