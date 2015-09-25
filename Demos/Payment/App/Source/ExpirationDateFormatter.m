#import "ExpirationDateFormatter.h"

@implementation ExpirationDateFormatter

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse {
    string = [super formatString:string reverse:reverse];
    if (!string) return nil;

    NSString *rawString = [string stringByReplacingOccurrencesOfString:@"/" withString:@""];
    if (reverse) return rawString;

    NSMutableString *mutableString = [NSMutableString new];
    NSUInteger idx = 0;
    NSString *characterString;

    while (idx < rawString.length) {
        characterString = [NSString stringWithFormat:@"%c", [rawString characterAtIndex:idx]];
        [mutableString appendString:characterString];

        if (idx == 1) {
            [mutableString appendString:@"/"];
        }

        ++idx;
    }

    return mutableString;
}

@end
