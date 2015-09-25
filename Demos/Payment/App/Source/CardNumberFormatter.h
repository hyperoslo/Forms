@import Formatter;

@interface CardNumberFormatter : Formatter

- (NSString *)formatString:(NSString *)string reverse:(BOOL)reverse;

@end
