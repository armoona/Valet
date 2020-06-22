//  Created by Dan Federman on 1/20/20.
//  Copyright © 2020 Square, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation
import XCTest

@testable import Valet


final class CloudAccessibilityTests: XCTestCase {

    func test_description_mirrorsAccessibilityCounterpartDescription() {
        CloudAccessibility.allCases.forEach {
            XCTAssertEqual($0.description, $0.accessibility.description)
        }
    }

    func test_secAccessibilityAttribute_mirrorsAccessibilityCounterpartSecAccessibilityAttribute() {
        CloudAccessibility.allCases.forEach {
            XCTAssertEqual($0.secAccessibilityAttribute, $0.accessibility.secAccessibilityAttribute)
        }
    }

}