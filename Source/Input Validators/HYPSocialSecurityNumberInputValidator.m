//
//  HYPSocialSecurityNumberInputValidator.m
//
//  Created by Christoffer Winterkvist on 9/30/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "HYPSocialSecurityNumberInputValidator.h"

@implementation HYPSocialSecurityNumberInputValidator

- (BOOL)validateReplacementString:(NSString *)string withText:(NSString *)text withRange:(NSRange)range
{
    return [super validateReplacementString:string withText:text withRange:range];
}

@end
