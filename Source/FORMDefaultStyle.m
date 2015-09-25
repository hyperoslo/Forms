#import "FORMDefaultStyle.h"

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

@implementation FORMDefaultStyle

+ (void)applyStyle {
    [[FORMBaseFieldCell appearance] setHeadingLabelFont:[UIFont fontWithName:@"AvenirNext-DemiBold" size:14.0]];
    [[FORMBaseFieldCell appearance] setHeadingLabelTextColor:[[UIColor alloc] initWithHex:@"28649C"]];

    [[FORMBackgroundView appearance] setBackgroundColor:[[UIColor alloc] initWithHex:@"DAE2EA"]];
    [[FORMBackgroundView appearance] setGroupBackgroundColor:[[UIColor alloc] initWithHex:@"DAE2EA"]];
    
    [[FORMSeparatorView appearance] setSeparatorColor:[[UIColor alloc] initWithHex:@"C6C6C6"]];

    [[FORMButtonFieldCell appearance] setBackgroundColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMButtonFieldCell appearance] setTitleLabelFont:[UIFont fontWithName:@"AvenirNext-DemiBold" size:16.0]];
    [[FORMButtonFieldCell appearance] setBorderWidth:1.0f];
    [[FORMButtonFieldCell appearance] setCornerRadius:5.0f];
    [[FORMButtonFieldCell appearance] setHighlightedTitleColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMButtonFieldCell appearance] setBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMButtonFieldCell appearance] setHighlightedBackgroundColor:[UIColor whiteColor]];
    [[FORMButtonFieldCell appearance] setTitleColor:[UIColor whiteColor]];

    [[FORMFieldValueCell appearance] setTextLabelFont:[UIFont fontWithName:@"AvenirNext-Medium" size:17.0]];
    [[FORMFieldValueCell appearance] setTextLabelColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[FORMFieldValueCell appearance] setDetailTextLabelHighlightedTextColor:[UIColor whiteColor]];
    [[FORMFieldValueCell appearance] setDetailTextLabelFont:[UIFont fontWithName:@"AvenirNext-Regular" size:14.0]];
    [[FORMFieldValueCell appearance] setDetailTextLabelColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[FORMFieldValueCell appearance] setDetailTextLabelHighlightedTextColor:[UIColor whiteColor]];
    [[FORMFieldValueCell appearance] setSelectedBackgroundViewColor:[[UIColor alloc] initWithHex:@"008ED9"]];
    [[FORMFieldValueCell appearance] setSelectedBackgroundFontColor:[UIColor whiteColor]];

    [[TextField appearance] setTextColor:[UIColor redColor]];
    [[TextField appearance] setBackgroundColor:[UIColor yellowColor]];
    [[TextField appearance] setFont:[UIFont fontWithName:@"AvenirNext-Regular" size:15.0]];
    [[TextField appearance] setTextColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[TextField appearance] setBorderWidth:1.0f];
    [[TextField appearance] setBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setCornerRadius:5.0f];
    [[TextField appearance] setActiveBackgroundColor:[[UIColor alloc] initWithHex:@"C0EAFF"]];
    [[TextField appearance] setActiveBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setInactiveBackgroundColor:[[UIColor alloc] initWithHex:@"E1F5FF"]];
    [[TextField appearance] setInactiveBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setEnabledBackgroundColor:[[UIColor alloc] initWithHex:@"E1F5FF"]];
    [[TextField appearance] setEnabledBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setEnabledTextColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[TextField appearance] setDisabledBackgroundColor:[[UIColor alloc] initWithHex:@"F5F5F8"]];
    [[TextField appearance] setDisabledBorderColor:[[UIColor alloc] initWithHex:@"DEDEDE"]];
    [[TextField appearance] setDisabledTextColor:[UIColor grayColor]];
    [[TextField appearance] setValidBackgroundColor:[[UIColor alloc] initWithHex:@"E1F5FF"]];
    [[TextField appearance] setValidBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setInvalidBackgroundColor:[[UIColor alloc] initWithHex:@"FFD7D7"]];
    [[TextField appearance] setInvalidBorderColor:[[UIColor alloc] initWithHex:@"EC3031"]];
    [[TextField appearance] setClearButtonColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setMinusButtonColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[TextField appearance] setPlusButtonColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];

    [[FORMFieldValueLabel appearance] setCustomFont:[UIFont fontWithName:@"AvenirNext-Regular" size:15.0]];
    [[FORMFieldValueLabel appearance] setTextColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[FORMFieldValueLabel appearance] setBorderWidth:1.0f];
    [[FORMFieldValueLabel appearance] setBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMFieldValueLabel appearance] setCornerRadius:5.0f];
    [[FORMFieldValueLabel appearance] setActiveBackgroundColor:[[UIColor alloc] initWithHex:@"C0EAFF"]];
    [[FORMFieldValueLabel appearance] setActiveBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMFieldValueLabel appearance] setInactiveBackgroundColor:[[UIColor alloc] initWithHex:@"E1F5FF"]];
    [[FORMFieldValueLabel appearance] setInactiveBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMFieldValueLabel appearance] setEnabledBackgroundColor:[[UIColor alloc] initWithHex:@"E1F5FF"]];
    [[FORMFieldValueLabel appearance] setEnabledBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMFieldValueLabel appearance] setEnabledTextColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[FORMFieldValueLabel appearance] setDisabledBackgroundColor:[[UIColor alloc] initWithHex:@"F5F5F8"]];
    [[FORMFieldValueLabel appearance] setDisabledBorderColor:[[UIColor alloc] initWithHex:@"DEDEDE"]];
    [[FORMFieldValueLabel appearance] setDisabledTextColor:[UIColor grayColor]];
    [[FORMFieldValueLabel appearance] setValidBackgroundColor:[[UIColor alloc] initWithHex:@"E1F5FF"]];
    [[FORMFieldValueLabel appearance] setValidBorderColor:[[UIColor alloc] initWithHex:@"3DAFEB"]];
    [[FORMFieldValueLabel appearance] setInvalidBackgroundColor:[[UIColor alloc] initWithHex:@"FFD7D7"]];
    [[FORMFieldValueLabel appearance] setInvalidBorderColor:[[UIColor alloc] initWithHex:@"EC3031"]];

    [[FORMGroupHeaderView appearance] setHeaderLabelFont:[UIFont fontWithName:@"AvenirNext-Medium" size:17.0]];
    [[FORMGroupHeaderView appearance] setHeaderLabelTextColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[FORMGroupHeaderView appearance] setHeaderBackgroundColor:[UIColor whiteColor]];

    [[FORMFieldValuesTableViewHeader appearance] setTitleLabelFont:[UIFont fontWithName:@"AvenirNext-Medium" size:17.0]];
    [[FORMFieldValuesTableViewHeader appearance] setTitleLabelTextColor:[[UIColor alloc] initWithHex:@"455C73"]];
    [[FORMFieldValuesTableViewHeader appearance] setInfoLabelFont:[UIFont fontWithName:@"AvenirNext-UltraLight" size:17.0]];
    [[FORMFieldValuesTableViewHeader appearance] setInfoLabelTextColor:[[UIColor alloc] initWithHex:@"28649C"]];

    [[FORMTextFieldCell appearance] setTooltipLabelFont:[UIFont fontWithName:@"AvenirNext-Medium" size:14.0]];
    [[FORMTextFieldCell appearance] setTooltipLabelTextColor:[[UIColor alloc] initWithHex:@"97591D"]];
    [[FORMTextFieldCell appearance] setTooltipBackgroundColor:[[UIColor alloc] initWithHex:@"FDFD54"]];
}

@end
