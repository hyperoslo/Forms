//
//  HYPPostalCodeInputValidator.m
//
//  Created by Christoffer Winterkvist on 9/25/14.
//  Copyright (c) 2014 Hyper. All rights reserved.
//

#import "HYPPostalCodeInputValidator.h"

@implementation HYPPostalCodeInputValidator

- (BOOL)validateReplacementString:(NSString *)string withText:(NSString *)text withRange:(NSRange)range
{
    return [super validateReplacementString:string withText:text withRange:range];
}

@end
