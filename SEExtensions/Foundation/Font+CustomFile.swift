//
//  Font+CustomFile.swift
//  SEExtensionDemo
//
//  Created by JOJO on 2020/3/23.
//  Copyright © 2020 JOJO. All rights reserved.
//

import Foundation
import UIKit

public extension UIFont {
    static func customFont(fileName: String, fontPoint: CGFloat) -> UIFont {
        let subString = "."
        
        if let name = fileName.components(separatedBy: subString).first,
            let type = fileName.components(separatedBy: subString).last,
            let path = Bundle.main.path(forResource: name, ofType: type) {
            
            debugPrint("*** font name = \(name)")
            debugPrint("*** font type = \(type)")
            debugPrint("*** font path = \(path)")
            
            let fontData = NSData.init(contentsOfFile: path)
            // ...通过CGDataProvider承载生成CGFont对象
            let fontDataProvider = CGDataProvider(data: CFBridgingRetain(fontData) as! CFData)
            let fontRef = CGFont.init(fontDataProvider!)!
            // ...注册字体
            var fontError = Unmanaged<CFError>?.init(nilLiteral: ())
            CTFontManagerRegisterGraphicsFont(fontRef, &fontError)
            // ...获取了字体实际名字
//            let fontName:String =  fontRef.fullName! as String
            let fontName:String =  fontRef.postScriptName! as String
            return UIFont.init(name: fontName, size: fontPoint) ?? UIFont.systemFont(ofSize: fontPoint)
            
        } else {
            return UIFont.systemFont(ofSize: fontPoint)
        }
    }
}

extension String {
    ///（如果backwards参数设置为true，则返回最后出现的位置）
    func positionOf(sub:String, backwards:Bool = false)->Int {
        // 如果没有找到就返回-1
        var pos = -1
        if let range = range(of:sub, options: backwards ? .backwards : .literal ) {
            if !range.isEmpty {
                pos = self.distance(from:startIndex, to:range.lowerBound)
            }
        }
        return pos
    }
}
