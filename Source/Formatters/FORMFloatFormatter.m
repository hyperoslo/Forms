#import "FORMFloatFormatter.h"

@implementation FORMFloatFormatter

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse formatter:(NSNumberFormatter *)formatter {
    string = [super formatString:string reverse:reverse formatter:formatter];
    if (!string) return nil;
    
    if (reverse) {
        return [string stringByReplacingOccurrencesOfString:formatter.decimalSeparator withString:@"."];
    } else {
        string = [string stringByReplacingOccurrencesOfString:@"." withString:formatter.decimalSeparator];
        return [string stringByReplacingOccurrencesOfString:@"" withString:formatter.groupingSeparator];
    }
}

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse {
  NSNumberFormatter *formatter = [NSNumberFormatter new];
  formatter.groupingSeparator = @"";
  formatter.decimalSeparator = @",";
  
  return [self formatString:string reverse:reverse formatter:formatter];
}

@end
