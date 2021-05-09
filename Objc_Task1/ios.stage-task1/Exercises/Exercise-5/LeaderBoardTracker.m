#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker ()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
        playerArray:(NSArray <NSNumber *> *)playerArray {
    
	NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:[playerArray count]];
		long cnt = [playerArray count];
   			 NSNumber *place;
	if([rankedArray count] == 0) {
		for(int i = 0; i < cnt; i++) {
			[result addObject:@1];
						}
        return result;
	}
    if([playerArray count] == 0) {
        return result;
    }
    
	for(int i = 0; i <  [playerArray count]; i++) {
        place = [NSNumber numberWithInt:1];
        for(int j = 0; j < [rankedArray count]; j++){
            if(([[playerArray objectAtIndex:i] intValue] < [[rankedArray objectAtIndex:j] intValue]) && 
	       j != 0 && 
               ([[rankedArray objectAtIndex:j] intValue] == [[rankedArray objectAtIndex:(j-1)] intValue])){
                continue;
            }
            if([[playerArray objectAtIndex:i] intValue] < [[rankedArray objectAtIndex:j] intValue]){
                place = [NSNumber numberWithInt:([place intValue]+1)];
            }
        }
        [result addObject:place];
	}
	return result;
}

@end
//@[@(4), @(3), @(2), @(2), @(1)];
//NSArray *rankedArray = @[@(100), @(80), @(80), @(50), @(20)];
//NSArray *playerArray = @[@(10), @(25), @(70), @(80), @(105)];
