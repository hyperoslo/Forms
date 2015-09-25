#import "FORMCustomStyle.h"

@import TextField;
#import "FORMBackgroundView.h"
#import "FORMSeparatorView.h"
#import "FORMFieldValueLabel.h"
#import "FORMFieldValueCell.h"
#import "FORMGroupHeaderView.h"
#import "FORMFieldValuesTableViewHeader.h"
#import "FORMTextFieldCell.h"
#import "FORMButtonFieldCell.h"
#import "FORMBaseFieldCell.h"

@import Hex;

@implementation FORMCustomStyle

+ (void)applyStyle {
    [[FORMBaseFieldCell appearance] setHeadingLabelFont:[UIFont fontWithName:@"Futura-Medium" size:15.0]];
    [[FORMBaseFieldCell appearance] setHeadingLabelTextColor:[[UIColor alloc] initWithHex:@"BBCEFF"]];

    [[FORMBackgroundView appearance] setBackgroundColor:[UIColor clearColor]];
    [[FORMBackgroundView appearance] setGroupBackgroundColor:[UIColor redColor]];

    [[FORMButtonFieldCell appearance] setBackgroundColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMButtonFieldCell appearance] setTitleLabelFont:[UIFont fontWithName:@"Futura-Medium" size:16.0]];
    [[FORMButtonFieldCell appearance] setBorderWidth:1.0f];
    [[FORMButtonFieldCell appearance] setCornerRadius:20.0f];
    [[FORMButtonFieldCell appearance] setTitleColor:[UIColor whiteColor]];
    [[FORMButtonFieldCell appearance] setHighlightedTitleColor:[UIColor whiteColor]];
    [[FORMButtonFieldCell appearance] setHighlightedBackgroundColor:[[UIColor alloc] initWithHex:@"0079B9"]];

    [[TextField appearance] setFont:[UIFont fontWithName:@"Futura-Medium" size:15.0]];
    [[TextField appearance] setTextColor:[[UIColor alloc] initWithHex:@"000000"]];
    [[TextField appearance] setBorderWidth:2.0f];
    [[TextField appearance] setBorderColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setCornerRadius:20.0f];

    [[TextField appearance] setActiveBackgroundColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setActiveBorderColor:[[UIColor alloc] initWithHex:@"BBCEFF"]];

    [[TextField appearance] setInactiveBackgroundColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setInactiveBorderColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];

    [[TextField appearance] setEnabledBackgroundColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setEnabledBorderColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setEnabledTextColor:[[UIColor alloc] initWithHex:@"000000"]];

    [[TextField appearance] setDisabledBackgroundColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setDisabledBorderColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setDisabledTextColor:[UIColor grayColor]];

    [[TextField appearance] setValidBackgroundColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];
    [[TextField appearance] setValidBorderColor:[[UIColor alloc] initWithHex:@"FFFFFF"]];

    [[TextField appearance] setInvalidBackgroundColor:[[UIColor alloc] initWithHex:@"FF4B47"]];
    [[TextField appearance] setInvalidBorderColor:[[UIColor alloc] initWithHex:@"FF0600"]];

    [[TextField appearance] setClearButtonColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setMinusButtonColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setPlusButtonColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];

    [[FORMGroupHeaderView appearance] setHeaderBackgroundColor:[UIColor clearColor]];

    [[FORMTextFieldCell appearance] setTooltipLabelFont:[UIFont fontWithName:@"Futura-Medium" size:14.0]];
    [[FORMTextFieldCell appearance] setTooltipLabelTextColor:[[UIColor alloc] initWithHex:@"97591D"]];
    [[FORMTextFieldCell appearance] setTooltipBackgroundColor:[[UIColor alloc] initWithHex:@"FDFD54"]];
}

@end
