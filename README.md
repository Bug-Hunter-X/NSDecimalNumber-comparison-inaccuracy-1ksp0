# NSDecimalNumber Comparison Inaccuracy in Objective-C

This repository demonstrates a subtle bug that can occur when comparing `NSDecimalNumber` objects in Objective-C, especially those created from floating-point numbers. Due to the inherent limitations of floating-point representation, seemingly identical numbers might yield unexpected results when using `isEqualToNumber:` for comparison. 

The `bug.m` file contains code that reproduces the issue, while `bugSolution.m` provides a solution using `compare:` method for precise decimal number comparison.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the `bug.m` file. Observe the unexpected comparison result.
4. Run the `bugSolution.m` file. Observe the correct comparison result.

## Solution

The recommended solution is to use the `compare:` method instead of `isEqualToNumber:` for comparison.  `compare:` offers a more robust way to handle potential floating-point inaccuracies during `NSDecimalNumber` comparisons.