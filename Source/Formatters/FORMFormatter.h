#import "FORMField.h"

@interface FORMFormatter : NSObject

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse;
- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse formatter:(NSNumberFormatter *)formatter;

@end
