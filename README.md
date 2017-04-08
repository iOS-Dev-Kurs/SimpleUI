iOS Development Course | Heidelberg University | [Nils Fischer](https://github.com/knly) | [ios-dev-kurs.github.io](ios-dev-kurs.github.io)

For detailed instructions in German see the [App Katalog](https://github.com/ios-dev-kurs/skript).

---

# Exercise 1 - Simple UI

[Fork](https://guides.github.com/activities/forking/) and [clone](http://gitref.org/creating/#clone) this repository and write a simple App with a couple of interface elements that does something useful. Regularly [commit](http://gitref.org/basic/#commit) your changes and [create a pull request](https://help.github.com/articles/creating-a-pull-request/) when you are finished.

Implement one of the following examples or an idea of your own. I look forward to creative Apps!

- **Counter:** The screen shows a label that displays the value of an attribute `var count: Int` when a method named `updateLabel()` is called. Buttons with titles "+1", "-1" and "Reset" change the value of `count` accordingly and call the `updateLabel()` method.

- **BMI:** When you enter weight `m` and height `l`, the App calculates and displays the [Body Mass Index](https://en.wikipedia.org/wiki/Body_mass_index) `BMI = m/l^2`.

- **RGB:** You can enter color values `0` to `255` for the red, green and blue components in three text fields. A button sets the background color `self.view.backgroundColor` accordingly and another button generates a random color. You can also add a `UISwitch` that toggles a repeating timer that changes the background color randomly at each interval (see hints below).

**Hints:**

- We are going to learn the object oriented programming in Swift systematically in the next lecture. Try to manage this exercise with some intuition and the hints given here. Ask me for help by sending a pull request when you get stuck.

- The attribute `text` of `UILabel` and `UITextField` return an _optional_ `String?`. Use the _optional binding_ syntax to unpack the optional:

	```swift
	if let name = nameTextfield.text {
	    // name exists and can be used here
	} else {
	    // nameTextfield.text does not have a value
	}
	```

- You can quickly convert a `String` to a number using the _Initializers_ `Int()` or `Double()`. This can fail, so again an _optional_ is returned that you need to unpack:

	```swift
	// text is a String
	if let number = Double(text) {
	   // successfully converted text to a decimal number
	}
	```

- Define an attribute such as `var count: Int` with a default value:

	```swift
	class ViewController: UIViewController {

	    var count: Int = 0

		// ...

	}
	```

- Of course Swift provides the basic calculation operators `+-*/`. These can be used in conjunction with setting a new value, e.g. to increase the value of a variable `count` by `1`:

	```swift
	count += 1
	```

- A color is represented by `UIColor`. The Initializer `UIColor(red:green:blue:alpha:)` accepts values from `0` to `1`:

	```swift
	let color = UIColor(red: 1, green: 0, blue: 0, alpha: 1) // red
	```

- The function `arc4random_uniform(n)` returns pseudo random numbers `x` with `0 <= x < n`.

- When a `UISwitch` is tapped by the user it emits an Event `UIControlEvent.ValueChanged`, very similar to a `UIButton`. With an attribute `var: randomTimer: NSTimer?` we can implement a method for randomly changing the background color:

	```swift
	var randomTimer: Timer?

	@IBAction func switchValueChanged(sender: UISwitch) {
		if sender.on {
			randomTimer = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(randomButtonPressed(_:)), userInfo: nil, repeats: true)
	    } else {
	        randomTimer?.invalidate()
	        randomTimer = nil
		}
	}
	```

	This periodically calls the method `randomButtonPressed(_:)` that must also be implemented.


## Hall of Fame

- [Richard, SS 2016](https://github.com/richardboell/SimpleUI):

	![Richard, SS 2016](https://ios-dev-kurs.github.io/halloffame/simpleui/ss2016_richard.png)

- [Marvin, SS 2016](https://github.com/marvinruder/SimpleUI):

	![Marvin, SS 2016](https://ios-dev-kurs.github.io/halloffame/simpleui/ss2016_marvin.png)
