#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    int countPairs = 0;
    for (int i=0; i < array.count; i++) {
        
      for (int j= i+1; j < array.count; j++) {
          
        if (([array[j] intValue] - [array[i] intValue]) == [number intValue]) {
            countPairs++;
            
        }
     
      }
        
    }
    
    return countPairs;
    
}

@end
