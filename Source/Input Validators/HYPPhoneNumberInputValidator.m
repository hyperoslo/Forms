//
//  HYPPhoneNumberInputValidator.m
//
//  Created by Christoffer Winterkvist on 9/29/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "HYPPhoneNumberInputValidator.h"

@implementation HYPPhoneNumberInputValidator

- (BOOL)validateReplacementString:(NSString *)string withText:(NSString *)text withRange:(NSRange)range
{
    return [super validateReplacementString:string withText:text withRange:range];
}

@end
