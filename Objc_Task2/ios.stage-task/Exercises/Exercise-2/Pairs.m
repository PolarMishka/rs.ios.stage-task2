#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    int countPairs = 0;
    for (int i=0; i < array.count - 1; i++) {
        
      for (int j=0; j < array.count; j++) {
          
        if ([array[i] intValue] == [array[j] intValue] - [number intValue]) {
            countPairs++;
        
        }
     
      }
        
    }
    
    return countPairs;
    
}

@end
