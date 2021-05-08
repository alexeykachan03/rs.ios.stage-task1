//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
	int cnt = 0;
		for(NSNumber *element in array) {
            if(element.intValue  % 2 != 0) cnt++;
		}
		return cnt;
	}

@end
