#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    NSMutableArray *resultArrayNumber = [[NSMutableArray alloc] init];
    NSMutableArray *resultArrayString = [[NSMutableArray alloc] init];
    NSMutableArray *sortedResultArray = [[NSMutableArray alloc] init];
    
    for (NSArray *itemArray in array) {
        
        if ([itemArray isKindOfClass: [NSArray class]]) {
            
            for (int i=0; i < itemArray.count; i++) {
                
                if ([itemArray[i] isKindOfClass: [NSNumber class]]) {
                    [resultArrayNumber addObject: itemArray[i]];
                } else if ([itemArray[i] isKindOfClass: [NSString class]]) {
                    [resultArrayString addObject: itemArray[i]];
                }
            }
            
        } else {
            return @[];
        }
    }
    
    [resultArrayNumber sortUsingSelector:@selector(compare:)];
    [resultArrayString sortUsingSelector:@selector(compare:)];
    
    [sortedResultArray addObjectsFromArray: resultArrayNumber];
    [sortedResultArray addObjectsFromArray: resultArrayString];
    
    return sortedResultArray;
}

@end
