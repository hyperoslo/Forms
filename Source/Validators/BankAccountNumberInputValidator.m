#import "BankAccountNumberInputValidator.h"

@implementation BankAccountNumberInputValidator

- (BOOL)validateReplacementString:(NSString *)string withText:(NSString *)text withRange:(NSRange)range {
    return [super validateReplacementString:string withText:text withRange:range];
}

@end
