#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    
    UInt8 reversInteger = 0;
    
    NSMutableArray *binaryArray = [[NSMutableArray <NSNumber *> alloc] init];
    
    for (int i = 0; i < 8; i++) {
        
        [binaryArray addObject: @(n % 2)];
        n = n / 2;
        
    }
    
    int degree = 128;
    
    for (int i = 0; i < 8; i++) {
            
            reversInteger = reversInteger + ([binaryArray[i] intValue] * degree);
            degree = degree / 2;
           
    }
            
        return reversInteger;
}
