#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)
- (NSNumber *)minrotated: (NSInteger)left minrotated: (NSInteger)right {
    NSInteger leftvalue = [[self objectAtIndex:left] integerValue ];
    NSInteger rightvalue = [[self objectAtIndex:right] integerValue];
	if(right - left == 1) {
		if(rightvalue > leftvalue) {
			return [self objectAtIndex:left];
		} else {
			return [self objectAtIndex:right];
		}
	}
	NSInteger center = (left + right)/2;
    NSInteger centervalue = [[self objectAtIndex:center] integerValue];
	if(rightvalue < centervalue) {
		return [self minrotated:(NSInteger)center minrotated:(NSInteger)right];
	}
	if(leftvalue > centervalue) {
		return [self minrotated:(NSInteger)left minrotated:(NSInteger)center];
	}
	return [self objectAtIndex:left];
}

- (NSNumber *)minRotated {
    if([self count] == 0){
        return nil;
    }
	NSInteger right = [self count]-1;
	return [self minrotated:0 minrotated:right];
}

@end
//- [0, 1, 2, 3, 4, 5] rotated 1 times results [5, 0, 1, 2, 3, 4]
//- [0, 1, 2, 3, 4, 5] rotated 2 times results [4, 5, 0, 1, 2, 3]
//- [0, 1, 2, 3, 4, 5] rotated 3 times results [3, 4, 5, 0, 1, 2]
