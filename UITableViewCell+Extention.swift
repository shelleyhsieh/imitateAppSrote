//
//  UITableViewCell+Extention.swift
//  imitateAppSrote
//
//  Created by shelley on 2022/12/21.
//

import UIKit

// 所有的 table view cell 都有 type property reuseIdentifier。

extension UITableViewCell {
    static var reuseIdentifier: String { "\(Self.self)" }
}
