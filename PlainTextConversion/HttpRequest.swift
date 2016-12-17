//
//  HttpRequest.swift
//  Shift
//
//  Created by Jayakumar Radhakrishnan on 6/24/16.
//  Copyright © 2016 Jayakumar Radhakrishnan. All rights reserved.
//

import UIKit

class HttpRequest: NSObject {
}
enum OptionalValue<T> {
    case None
    case Some(T)
}
extension Data {
    var attributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: self, options:[NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue,NSForegroundColorAttributeName:UIColor.white,NSFontAttributeName:UIFont.systemFont(ofSize: 15)], documentAttributes: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
    
    var attributedStringHtml: NSMutableAttributedString? {
        do {
         let   attrStr = try NSMutableAttributedString(data: self, options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType,NSCharacterEncodingDocumentAttribute:String.Encoding.utf8.rawValue], documentAttributes: nil)
            attrStr.addAttributes([NSFontAttributeName: UIFont.systemFont(ofSize: 17.0),NSForegroundColorAttributeName:UIColor.white], range: NSRange(location: 0, length: attrStr.length))
            return attrStr
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
}


