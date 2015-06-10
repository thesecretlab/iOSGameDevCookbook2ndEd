# iOS Game Development Cookbook Second Edition

Code from [Secret Lab](http://www.secretlab.com.au)'s book, [iOS Game Development Cookbook Second Edition](http://shop.oreilly.com/product/0636920037170.do).

The [master](https://github.com/thesecretlab/iOSGameDevCookbook2ndEd/tree/master) branch is what's printed in the Second Edition, and is compatible with Xcode 6.3 and 6.4 (iOS 8).

The [xcode-7](https://github.com/thesecretlab/iOSGameDevCookbook2ndEd/tree/xcode-7) branch is updated for Xcode 7 (iOS 9), and uses Swift 2.

Changes due to change Swift 2:

* The `println` function has changed to `print`.
* Objective-C API methods now return arrays and sets of specific types, instead of [AnyObject].  For example, `touchesBegan` now receives a `Set<UITouch>` instead of a `Set<NSObject>` (or, previously, a `NSSet`).
* Several API methods have changed whether their parameters and return types are Optional or not.
* The new error handling system means that passing in an optional `NSError` variable to a function and then checking whether that variable has a value is gone, and has been replaced with the `do`-`catch` syntax.
* `Printable` has changed to `CustomStringConvertible`.
* The `find` function has been changed, and is now a method on collections called `indexOf`. Instead of calling `find(someCollection, someElement)`, you now call `someCollection.indexOf(someElement)`.
* The `supportedInterfaceOrientations` now returns a `UIInterfaceOrientationMask`, and not an `Int`.

Known Issues:

* SceneKit project: SCNSceneSource.entryWithIdentifier is unavailable. Updated code is pending.

You can email us at [lab@secretlab.com.au](mailto:lab@secretlab.com.au)

## License

The code in this repository is licensed under the MIT license unless otherwise noted within specific files.

Copyright (c) 2015 Secret Lab, Pty. Ltd.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
