#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
	NSNumber *number2;
	if([number intValue] < 0) {
		number2 = [NSNumber numberWithLongLong:-[number longLongValue]];
	} else {
		number2 = [NSNumber numberWithLongLong:[number longLongValue]];
	}
	NSString *myString = [number2 stringValue];
	NSMutableArray *arr = [[NSMutableArray alloc] initWithCapacity:[myString length] ];
	for(long i = [myString length] - 1; i >= 0; i--) {
		[arr addObject:[myString substringWithRange:NSMakeRange(i, 1)]];
	}
	return arr;
}

@end
