#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    NSMutableString *ipAdress = [[NSMutableString alloc]initWithString:@""];
    
        if (numbersArray == nil || numbersArray.count == 0) {
           [ipAdress setString:@""];
           return ipAdress;
        }
    
    for (int i=0; i < 4; i++){
        
        if ([numbersArray[i] intValue] > 255) {
            [ipAdress setString:@"The numbers in the input array can be in the range from 0 to 255."];
            return ipAdress;
        }
            if ([numbersArray[i] intValue] < 0) {
            [ipAdress setString:@"Negative numbers are not valid for input."];
            return ipAdress;
        }
            [ipAdress appendString:[numbersArray[i] stringValue]];
            [ipAdress appendString:@"."];
        
        if (numbersArray.count < 4) {
            for (int i=0; i < (4 - numbersArray.count); i++) {
                [ipAdress appendString:@"0."];
            }
            return [ipAdress substringToIndex:[ipAdress length] - 1];
        }
        
    }
    return [ipAdress substringToIndex:[ipAdress length] - 1];
}

@end
