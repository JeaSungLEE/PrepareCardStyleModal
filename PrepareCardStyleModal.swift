//
//  PrepareCardStyleModal.swift
//  PrepareCardStyleModal
//
//  Created by 이재성 on 2019/09/12.
//  Copyright © 2019 jercy. All rights reserved.
//

import UIKit

extension UIViewController {
    static let presentFullScreenSwizzledMethod: Void = {
        let originalSelector = #selector(present(_:animated:completion:))
        let swizzledSelector = #selector(jercyPresent(_:animated:completion:))
        let originalMethod = class_getInstanceMethod(UIViewController.self, originalSelector)
        let swizzledMethod = class_getInstanceMethod(UIViewController.self, swizzledSelector)
        
        if let origin = originalMethod, let swizzle = swizzledMethod {
            method_exchangeImplementations(origin, swizzle)
        }
    }()
    
    @objc func jercyPresent(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        if #available(iOS 13.0, *) {
            viewControllerToPresent.modalPresentationStyle = .fullScreen
        }
        jercyPresent(viewControllerToPresent, animated: flag, completion: completion)
    }
}

extension UIViewController {
    static let preventDissmissSwizzledMethod: Void = {
        let originalSelector = #selector(present(_:animated:completion:))
        let swizzledSelector = #selector(jercyPreventDismissPresent(_:animated:completion:))
        let originalMethod = class_getInstanceMethod(UIViewController.self, originalSelector)
        let swizzledMethod = class_getInstanceMethod(UIViewController.self, swizzledSelector)
        
        if let origin = originalMethod, let swizzle = swizzledMethod {
            method_exchangeImplementations(origin, swizzle)
        }
    }()
    
    @objc func jercyPreventDismissPresent(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        if #available(iOS 13.0, *) {
            viewControllerToPresent.isModalInPresentation = true
        }
        jercyPreventDismissPresent(viewControllerToPresent, animated: flag, completion: completion)
    }
}
