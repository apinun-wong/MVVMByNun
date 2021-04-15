//
//  ProgressLoadingManager.swift
//  Qonnext
//
//  Created by Apinun Wongintawang on 4/12/20.
//  Copyright © 2020 Apinun Wongintawang. All rights reserved.
//

import Foundation
import MKProgress

final class ProgressLoading {
    static func show() {
        MKProgress.show()
    }
    
    static func dismiss(_ complete: (() -> Void)?) {
        MKProgress.hide(false)
        UIView.animate(withDuration: 0.4) {
            complete?()
        }
    }
}
