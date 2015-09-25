@import Formatter;

@interface ExpirationDateFormatter : Formatter

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse;

@end
