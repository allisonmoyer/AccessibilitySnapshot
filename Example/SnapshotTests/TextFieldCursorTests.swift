//
//  Copyright 2020 Square Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import AccessibilitySnapshot
import FBSnapshotTestCase

final class TextFieldCursorTests: SnapshotTestCase {

    func testShowsTextFieldCursor() {
        let textField = UITextField()
        textField.accessibilityLabel = "Enter Text"
        textField.placeholder = "Enter Text"
        textField.tintColor = .magenta

        let container = ContainerView(subview: textField)
        container.frame.size = container.sizeThatFits(UIScreen.main.bounds.size)

        SnapshotVerifyAccessibility(container, forceCursorVisible: true)
    }

    func testHidesTextFieldCursor() {
        let textField = UITextField()
        textField.accessibilityLabel = "Enter Text"
        textField.placeholder = "Enter Text"
        textField.tintColor = .magenta

        let container = ContainerView(subview: textField)
        container.frame.size = container.sizeThatFits(UIScreen.main.bounds.size)

        SnapshotVerifyAccessibility(container, forceCursorVisible: false)
    }

}
