Instead of relying on `isEqualToNumber:` for comparing `NSDecimalNumber` objects, use the `compare:` method. This method provides a more accurate comparison by considering the full decimal representation and returns an `NSComparisonResult` (NSOrderedAscending, NSOrderedSame, NSOrderedDescending) instead of a simple boolean. 

```objectivec
NSDecimalNumber *number1 = [NSDecimalNumber decimalNumberWithDecimal:[[NSNumber numberWithDouble:0.1 + 0.2] decimalValue]];
NSDecimalNumber *number2 = [NSDecimalNumber decimalNumberWithString:@