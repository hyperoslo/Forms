#import "FORMPopoverFieldCell.h"
#import "FORMFieldValuesTableViewController.h"

static NSString * const FORMMultiselectFormFieldCellIdentifier = @"FORMMultiselectFormFieldCellIdentifier";

@interface FORMMultiselectFieldCell : FORMPopoverFieldCell

@property (nonatomic) FORMFieldValuesTableViewController *fieldValuesController;

@end
