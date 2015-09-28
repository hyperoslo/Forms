#import "FORMTextField.h"
@import Hex;

static const CGFloat TextFieldMinusButtonWidth = 30.0f;
static const CGFloat TextFieldMinusButtonHeight = 20.0f;
static const CGFloat TextFieldPlusButtonWidth = 30.0f;
static const CGFloat TextFieldPlusButtonHeight = 20.0f;

static NSString * const TextFieldFontKey = @"font";
static NSString * const TextFieldFontSizeKey = @"font_size";
static NSString * const TextFieldBorderWidthKey = @"border_width";
static NSString * const TextFieldBorderColorKey = @"border_color";
static NSString * const TextFieldBackgroundColorKey = @"background_color";
static NSString * const TextFieldCornerRadiusKey = @"corner_radius";
static NSString * const TextFieldActiveBackgroundColorKey = @"active_background_color";
static NSString * const TextFieldActiveBorderColorKey = @"active_border_color";
static NSString * const TextFieldInactiveBackgroundColorKey = @"inactive_background_color";
static NSString * const TextFieldInactiveBorderColorKey = @"inactive_border_color";
static NSString * const TextFieldEnabledBackgroundColorKey = @"enabled_background_color";
static NSString * const TextFieldEnabledBorderColorKey = @"enabled_border_color";
static NSString * const TextFieldEnabledTextColorKey = @"enabled_text_color";
static NSString * const TextFieldDisabledBackgroundColorKey = @"disabled_background_color";
static NSString * const TextFieldDisabledBorderColorKey = @"disabled_border_color";
static NSString * const TextFieldDisabledTextColorKey = @"disabled_text_color";
static NSString * const TextFieldValidBackgroundColorKey = @"valid_background_color";
static NSString * const TextFieldValidBorderColorKey = @"valid_border_color";
static NSString * const TextFieldInvalidBackgroundColorKey = @"invalid_background_color";
static NSString * const TextFieldInvalidBorderColorKey = @"invalid_border_color";
static NSString * const TextFieldAccessoryButtonColorKey = @"accessory_button_color";

@interface FORMTextField ()

@property (nonatomic) UIButton *minusButton;
@property (nonatomic) UIButton *plusButton;
@property (nonatomic) UIColor *accessoryButtonColor;

@end

@implementation FORMTextField

- (void)setTypeString:(NSString *)typeString {
    _typeString = typeString;

    TextFieldType type;
    if ([typeString isEqualToString:@"name"]) {
        type = TextFieldTypeName;
    } else if ([typeString isEqualToString:@"username"]) {
        type = TextFieldTypeUsername;
    } else if ([typeString isEqualToString:@"phone"]) {
        type = TextFieldTypePhoneNumber;
    } else if ([typeString isEqualToString:@"number"]) {
        type = TextFieldTypeNumber;
    } else if ([typeString isEqualToString:@"float"]) {
        type = TextFieldTypeFloat;
    } else if ([typeString isEqualToString:@"address"]) {
        type = TextFieldTypeAddress;
    } else if ([typeString isEqualToString:@"email"]) {
        type = TextFieldTypeEmail;
    } else if ([typeString isEqualToString:@"date"]) {
        type = TextFieldTypeDate;
    } else if ([typeString isEqualToString:@"select"]) {
        type = TextFieldTypeSelect;
    } else if ([typeString isEqualToString:@"text"]) {
        type = TextFieldTypeDefault;
    } else if ([typeString isEqualToString:@"password"]) {
        type = TextFieldTypePassword;
    } else if ([typeString isEqualToString:@"count"]) {
        type = TextFieldTypeCount;
        [self addCountButtons];
    } else if (!typeString.length) {
        type = TextFieldTypeDefault;
    } else {
        type = TextFieldTypeUnknown;
    }

    self.type = type;
}

- (void)addCountButtons {
    self.leftView = self.minusButton;
    self.leftViewMode = UITextFieldViewModeAlways;

    self.rightView = self.plusButton;
    self.rightViewMode = UITextFieldViewModeAlways;

    self.textAlignment = NSTextAlignmentCenter;
}

#pragma mark - UIResponder Overwritables

- (BOOL)becomeFirstResponder {
    if ([self.textFieldDelegate respondsToSelector:@selector(textFormFieldDidBeginEditing:)]) {
        [self.textFieldDelegate textFormFieldDidBeginEditing:self];
    }

    return [super becomeFirstResponder];
}

- (BOOL)canBecomeFirstResponder {
    BOOL isTextField = (self.type != TextFieldTypeSelect &&
                        self.type != TextFieldTypeDate);

    return (isTextField && self.enabled) ?: [super canBecomeFirstResponder];
}


#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(FORMTextField *)textField {
    BOOL selectable = (textField.type == TextFieldTypeSelect ||
                       textField.type == TextFieldTypeDate);

    if (selectable &&
        [self.textFieldDelegate respondsToSelector:@selector(textFormFieldDidBeginEditing:)]) {
        [self.textFieldDelegate textFormFieldDidBeginEditing:self];
    }

    return !selectable;
}

- (void)textFieldDidBeginEditing:(FORMTextField *)textField {
    self.active = YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.active = NO;
    if ([self.textFieldDelegate respondsToSelector:@selector(textFormFieldDidEndEditing:)]) {
        [self.textFieldDelegate textFormFieldDidEndEditing:self];
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    if (!string || [string isEqualToString:@"\n"]) return YES;

    BOOL validator = (self.inputValidator &&
                      [self.inputValidator respondsToSelector:@selector(validateReplacementString:withText:withRange:)]);

    if (validator) return [self.inputValidator validateReplacementString:string
                                                                withText:self.text withRange:range];

    return YES;
}

- (void)setActive:(BOOL)active {
    _active = active;

    [self updateActive:active];
}

#pragma mark - Buttons

- (void)createCountButtons {
    // Minus Button
    UIImage *minusImage = [TextFieldClearButton imageForSize:CGSizeMake(18, 18) andButtonType:TextFieldButtonTypeMinus color:self.accessoryButtonColor];
    UIImage *minusImageTemplate = [minusImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    self.minusButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.minusButton setImage:minusImageTemplate forState:UIControlStateNormal];

    [self.minusButton addTarget:self action:@selector(minusButtonAction) forControlEvents:UIControlEventTouchUpInside];
    self.minusButton.frame = CGRectMake(0.0f, 0.0f, TextFieldMinusButtonWidth, TextFieldMinusButtonHeight);

    // Plus Button
    UIImage *plusImage = [TextFieldClearButton imageForSize:CGSizeMake(18, 18) andButtonType:TextFieldButtonTypePlus color:self.accessoryButtonColor];
    UIImage *plusImageTemplate = [plusImage imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    self.plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.plusButton setImage:plusImageTemplate forState:UIControlStateNormal];

    [self.plusButton addTarget:self action:@selector(plusButtonAction) forControlEvents:UIControlEventTouchUpInside];
    self.plusButton.frame = CGRectMake(0.0f, 0.0f, TextFieldPlusButtonWidth, TextFieldPlusButtonHeight);
}

#pragma mark - Style

- (void)setCustomFont:(UIFont *)font {
    NSString *styleFont = [self.styles valueForKey:TextFieldFontKey];
    NSString *styleFontSize = [self.styles valueForKey:TextFieldFontSizeKey];
    if ([styleFont length] > 0) {
        if ([styleFontSize length] > 0) {
            font = [UIFont fontWithName:styleFont size:[styleFontSize floatValue]];
        } else {
            font = [UIFont fontWithName:styleFont size:font.pointSize];
        }
    }

    [super setCustomFont:font];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    NSString *style = [self.styles valueForKey:TextFieldBorderWidthKey];
    if ([style length] > 0) {
        borderWidth = [style floatValue];
    }

    [super setBorderWidth:borderWidth];
}

- (void)setBorderColor:(UIColor *)borderColor {
    NSString *style = [self.styles valueForKey:TextFieldBorderColorKey];
    if ([style length] > 0) {
        borderColor = [[UIColor alloc] initWithHex:style];
    }
    [super setBorderColor:borderColor];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    NSString *style = [self.styles valueForKey:TextFieldBackgroundColorKey];
    if ([style length] > 0) {
        backgroundColor = [[UIColor alloc] initWithHex:style];
    }
    [super setBackgroundColor:backgroundColor];
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    NSString *style = [self.styles valueForKey:TextFieldCornerRadiusKey];
    if ([style length] > 0) {
        cornerRadius = [style floatValue];
    }

    [super setCornerRadius:cornerRadius];
}

- (void)setAccessoryButtonColor:(UIColor *)accessoryButtonColor {
    NSString *style = [self.styles valueForKey:TextFieldAccessoryButtonColorKey];
    if ([style length] > 0) {
        accessoryButtonColor = [[UIColor alloc] initWithHex:style];
    }

    _accessoryButtonColor = accessoryButtonColor;

    [super setAccessoryButtonColor:accessoryButtonColor];
}

#pragma mark - Styling

- (void)setActiveBackgroundColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldActiveBackgroundColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setActiveBackgroundColor:color];
}

- (void)setActiveBorderColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldActiveBorderColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setActiveBorderColor:color];
}

- (void)setInactiveBackgroundColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldInactiveBackgroundColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setInactiveBackgroundColor:color];
}

- (void)setInactiveBorderColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldInactiveBorderColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setInactiveBorderColor:color];
}

- (void)setEnabledBackgroundColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldEnabledBackgroundColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setEnabledBackgroundColor:color];
}

- (void)setEnabledBorderColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldEnabledBorderColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setEnabledBorderColor:color];
}

- (void)setEnabledTextColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldEnabledTextColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setEnabledTextColor:color];
}

- (void)setDisabledBackgroundColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldDisabledBackgroundColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setDisabledBackgroundColor:color];
}

- (void)setDisabledBorderColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldDisabledBorderColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setDisabledBorderColor:color];
}

- (void)setDisabledTextColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldDisabledTextColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setDisabledTextColor:color];
}

- (void)setValidBackgroundColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldValidBackgroundColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setValidBackgroundColor:color];
}

- (void)setValidBorderColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldValidBorderColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setValidBorderColor:color];
}

- (void)setInvalidBackgroundColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldInvalidBackgroundColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setInvalidBackgroundColor:color];
}

- (void)setInvalidBorderColor:(UIColor *)color {
    NSString *style = [self.styles valueForKey:TextFieldInvalidBorderColorKey];
    if ([style length] > 0) {
        color = [[UIColor alloc] initWithHex:style];
    }
    [super setInvalidBorderColor:color];
}

#pragma mark - Actions

- (void)minusButtonAction {
    NSNumber *number = @([self.rawText integerValue] - 1);
    if ([number integerValue] < 0) {
        self.rawText = @"0";
    } else {
        self.rawText = [number stringValue];
    }

    if ([self.textFieldDelegate respondsToSelector:@selector(textFormField:didUpdateWithText:)]) {
        [self.textFieldDelegate textFormField:self
                            didUpdateWithText:self.rawText];
    }
}

- (void)plusButtonAction {
    NSNumber *number = @([self.rawText integerValue] + 1);
    self.rawText = [number stringValue];

    if ([self.textFieldDelegate respondsToSelector:@selector(textFormField:didUpdateWithText:)]) {
        [self.textFieldDelegate textFormField:self
                            didUpdateWithText:self.rawText];
    }
}

@end
