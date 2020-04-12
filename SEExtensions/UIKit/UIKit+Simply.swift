//
//  SimplyExtension.swift
//  guru_iOS
//
//  Created by Di on 2018/12/6.
//  Copyright © 2018 gelonghui. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    @discardableResult
    func shadow (
        color: UIColor?,
        radius: CGFloat? = nil,
        opacity: Float? = nil,
        offset: CGSize? = nil,
        path: CGPath? = nil
    ) -> Self {
        layer.shadowColor = color?.cgColor
        
        if let radius = radius {
            layer.shadowRadius = radius
        }
        
        if let opacity = opacity {
            layer.shadowOpacity = opacity
        }
        
        if let offset = offset {
            layer.shadowOffset = offset
        }
        
        if let path = path {
            layer.shadowPath = path
        }
        
        return self
    }
    
    @discardableResult
    func crop() -> Self {
        contentMode()
        clipsToBounds()
        return self
    }

    @discardableResult
    func cornerRadius(_ value: CGFloat, masksToBounds: Bool = true) -> Self {
        layer.cornerRadius = value
        layer.masksToBounds = masksToBounds
        return self
    }

    @discardableResult
    func borderColor(_ value: UIColor, width: CGFloat = UIScreen.minLineWidth) -> Self {
        layer.borderColor = value.cgColor
        layer.borderWidth = width
        return self
    }

    @discardableResult
    func contentMode(_ value: UIView.ContentMode = .scaleAspectFill) -> Self {
        contentMode = value
        return self
    }

    @discardableResult
    func clipsToBounds(_ value: Bool = true) -> Self {
        clipsToBounds = value
        return self
    }

    @discardableResult
    func tag(_ value: Int) -> Self {
        tag = value
        return self
    }

    @discardableResult
    func tintColor(_ value: UIColor) -> Self {
        tintColor = value
        return self
    }

    @discardableResult
    func backgroundColor(_ value: UIColor) -> Self {
        backgroundColor = value
        return self
    }
}

extension UILabel {
    @discardableResult
    public func text(_ value: String?) -> Self {
        text = value
        return self
    }

    @discardableResult
    public func color(_ value: UIColor) -> Self {
        textColor = value
        return self
    }

    @discardableResult
    public func font(_ value: CGFloat, _ bold: Bool = false) -> Self {
        font = bold ? UIFont.boldSystemFont(ofSize: value) : UIFont.systemFont(ofSize: value)
        /// 8.2 +
        //        font = UIFont.systemFont(ofSize: value, weight: bold ? .bold : .regular)
        return self
    }

    @discardableResult
    public func numberOfLines(_ value: Int) -> Self {
        numberOfLines = value
        return self
    }

    @discardableResult
    public func textAlignment(_ value: NSTextAlignment) -> Self {
        textAlignment = value
        return self
    }

    @discardableResult
    public func lineBreakMode(_ value: NSLineBreakMode = .byTruncatingTail) -> Self {
        lineBreakMode = value
        return self
    }
}

extension UIButton {
    @discardableResult
    public func title(_ value: String?, _ state: UIControl.State = .normal) -> Self {
        setTitle(value, for: state)
        return self
    }

    @discardableResult
    public func titleColor(_ value: UIColor, _ state: UIControl.State = .normal) -> Self {
        setTitleColor(value, for: state)
        return self
    }

    @discardableResult
    public func image(_ value: UIImage?, _ state: UIControl.State = .normal) -> Self {
        setImage(value, for: state)
        return self
    }

    @discardableResult
    public func backgroundImage(_ value: UIImage?, _ state: UIControl.State = .normal) -> Self {
        setBackgroundImage(value, for: state)
        return self
    }

    @discardableResult
    public func backgroundColor(_ value: UIColor, _ state: UIControl.State = .normal) -> Self {
        setBackgroundColor(value, for: state)
        return self
    }

    @discardableResult
    public func font(_ value: CGFloat, _ bold: Bool = false) -> Self {
        titleLabel?.font(value, bold)
        return self
    }

    @discardableResult
    public func lineBreakMode(_ value: NSLineBreakMode = .byTruncatingTail) -> Self {
        titleLabel?.lineBreakMode(value)
        return self
    }
}



extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1)
    }
}

extension Array {
    
    public func randomItem() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
    
}

extension CGPoint {
    
    public func distance(from point: CGPoint) -> CGFloat {
        return hypot(point.x - x, point.y - y)
    }
    
}


