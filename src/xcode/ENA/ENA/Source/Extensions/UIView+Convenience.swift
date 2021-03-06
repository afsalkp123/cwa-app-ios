// Corona-Warn-App
//
// SAP SE and all other contributors
// copyright owners license this file to you under the Apache
// License, Version 2.0 (the "License"); you may not use this
// file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import UIKit

extension UIView {
	/// Sets `translatesAutoresizingMaskIntoConstraints` to a specific `state` for all views.
	static func translatesAutoresizingMaskIntoConstraints(for views: [UIView], to _: Bool) {
		views.forEach { view in
			view.translatesAutoresizingMaskIntoConstraints = false
		}
	}

	/// Adds the specified subviews to self.
	func addSubviews(_ views: [UIView]) {
		views.forEach { subView in
			self.addSubview(subView)
		}
	}

	/// Convenience constraint setting for width and height layout constraints.
	func setConstraint(
		for anchor: NSLayoutDimension,
		equalTo constant: CGFloat
	) {
		anchor.constraint(equalToConstant: constant).isActive = true
	}
}
