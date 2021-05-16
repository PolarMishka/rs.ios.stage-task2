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
    NSArray *reversResultArrayString = [[resultArrayString reverseObjectEnumerator] allObjects];
    
    [sortedResultArray addObjectsFromArray: resultArrayNumber];
    
    if (resultArrayNumber.count != 0) {
        [sortedResultArray addObjectsFromArray: reversResultArrayString];
    } else {
        [sortedResultArray addObjectsFromArray: resultArrayString];
    }
    
    return sortedResultArray;
}

@end
