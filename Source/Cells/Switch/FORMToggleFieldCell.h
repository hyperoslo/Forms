@import UIKit;

#import "FORMBaseFieldCell.h"

static NSString * const FORMToggleFieldCellIdentifier = @"FORMToggleFieldCellIdentifier";

@interface FORMToggleFieldCell : FORMBaseFieldCell

- (void)setTintColor:(UIColor *)tintColor UI_APPEARANCE_SELECTOR;
- (void)setBackgroundColor:(UIColor *)backgroundColor UI_APPEARANCE_SELECTOR;

@end
