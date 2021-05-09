#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
	bool jug = false;
	for(int i = 0; i < self.length; i++) {
		if([self characterAtIndex:i] <= '9' && [self characterAtIndex:i] >= '0') {
			jug =  true;
				} else {
					return false;
					}
				}
    		return jug;
	}

@end
