#import "FORMMultiselectFieldCell.h"

#import "FORMFieldValue.h"

static const CGSize FORMMultiselectPopoverSize = { .width = 320.0f, .height = 308.0f };

@interface FORMMultiselectFieldCell () <FORMTextFieldDelegate, FORMFieldValuesTableViewControllerDelegate>

@end

@implementation FORMMultiselectFieldCell

#pragma mark - Initializers

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame contentViewController:self.fieldValuesController
                 andContentSize:FORMMultiselectPopoverSize];
    if (!self) return nil;

    self.iconImageView.image = [UIImage imageNamed:@"ic_mini_arrow_down"];

    return self;
}

#pragma mark - Getters

- (FORMFieldValuesTableViewController *)fieldValuesController
{
    if (_fieldValuesController) return _fieldValuesController;

    _fieldValuesController = [FORMFieldValuesTableViewController new];
    _fieldValuesController.delegate = self;

    return _fieldValuesController;
}

#pragma mark - FORMBaseFormFieldCell

- (void)updateWithField:(FORMField *)field
{
    [super updateWithField:field];

    
    if (field.value) {
        if ([field.value isKindOfClass:[FORMFieldValue class]]) {
            FORMFieldValue *fieldValue = (FORMFieldValue *)field.value;
            
            if (field.selectedValues)
            {
                NSMutableArray *previouslySelected = (NSMutableArray*)[field.selectedValues mutableCopy];
                if ([previouslySelected indexOfObject:fieldValue.title] == NSNotFound)
                    [previouslySelected addObject:fieldValue.title];
                
                field.selectedValues = previouslySelected;
                
            }
            else
            {
                field.selectedValues = [[NSArray alloc] initWithObjects:fieldValue.title,nil];
    
            }
            
            self.fieldValueLabel.text = [field.selectedValues componentsJoinedByString:@", "];
            
        } else {

            for (FORMFieldValue *fieldValue in field.values) {
                if ([fieldValue identifierIsEqualTo:field.value]) {
                    field.value = fieldValue;
                    
                    self.fieldValueLabel.text = fieldValue.title;
                    break;
                }
            }
        }
    } else {
        self.fieldValueLabel.text = nil;
    }
}

- (void)removeWithField:(FORMField *)field
{
    [super updateWithField:field];
    if (field.value) {
        if ([field.value isKindOfClass:[FORMFieldValue class]]) {
            FORMFieldValue *fieldValue = (FORMFieldValue *)field.value;
            if (field.selectedValues)
            {
                NSMutableArray *previouslySelected = [field.selectedValues mutableCopy];
                if ([previouslySelected indexOfObject:fieldValue.title] != NSNotFound)
                    [previouslySelected removeObject:fieldValue.title];
                
                field.selectedValues = previouslySelected;
                
            }
            else
            {
                field.selectedValues = [[NSArray alloc] initWithObjects:nil];
                
            }
            
            self.fieldValueLabel.text = [field.selectedValues componentsJoinedByString:@", "];
        }
        /*else {
            
            for (FORMFieldValue *fieldValue in field.values) {
                if ([fieldValue identifierIsEqualTo:field.value]) {
                    field.value = fieldValue;
                    self.fieldValueLabel.text = fieldValue.title;
                    break;
                }
            }
        }
         */
    } else {
        self.fieldValueLabel.text = nil;
    }
}

#pragma mark - FORMPopoverFormFieldCell

- (void)updateContentViewController:(UIViewController *)contentViewController withField:(FORMField *)field
{
    self.fieldValuesController.field = self.field;
}

#pragma mark - FORMFieldValuesTableViewControllerDelegate

- (void)fieldValuesTableViewController:(FORMFieldValuesTableViewController *)fieldValuesTableViewController
                      didSelectedValue:(FORMFieldValue *)selectedValue
{
    // an array of values
    self.field.value = selectedValue;

    [self updateWithField:self.field];

    [self validate];


    if ([self.delegate respondsToSelector:@selector(fieldCell:updatedWithField:)]) {
        [self.delegate fieldCell:self updatedWithField:self.field];
    }
}

- (void)fieldValuesTableViewController:(FORMFieldValuesTableViewController *)fieldValuesTableViewController
                      didDeselectedValue:(FORMFieldValue *)deselectedValue
{
    // an array of values
    self.field.value = deselectedValue;
    
    [self removeWithField:self.field];
    
    [self validate];
    
    if ([self.delegate respondsToSelector:@selector(fieldCell:updatedWithField:)]) {
        [self.delegate fieldCell:self updatedWithField:self.field];
    }
}

@end
