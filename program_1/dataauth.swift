//
//  data_auth.swift
//  program_1
//
//  Created by Nazar Kovalik on 5/4/19.
//  Copyright © 2019 Nazar Kovalik. All rights reserved.
//

import Foundation
import RealmSwift

class dataauth: Object {
  @objc dynamic var login:String?
  @objc dynamic var password:String?
}
