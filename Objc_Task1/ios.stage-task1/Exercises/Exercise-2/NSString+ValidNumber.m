#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
	bool isok = false;
	for(int i = 0; i < self.length; i++) {
		if([self characterAtIndex:i] <= '9' && [self characterAtIndex:i] >= '0') {
			isok =  true;
		} else {
			return false;
		}
	}
    return isok;
}

@end
