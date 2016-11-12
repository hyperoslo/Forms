#import "FORMToggleFieldCell.h"
@import Hex;
#import "FORMFieldValue.h"

static NSString * const FORMToggleTintColorKey = @"tint_color";
static NSString * const FORMToggleBackgroundColorKey = @"background_color";

static const CGFloat FORMToggleFieldCellMarginTop = 36.0f;
static const CGFloat FORMToggleFieldCellMarginBottom = 4.0f;

@interface FORMToggleFieldCell ()

@property (nonatomic) UISwitch *toggle;

@end

@implementation FORMToggleFieldCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) return nil;
    
    self.toggle = [[UISwitch alloc] initWithFrame:frame];
    [self.toggle addTarget:self action:@selector(toggleAction:) forControlEvents:UIControlEventValueChanged];
    [self.contentView addSubview:self.toggle];
    
    return self;
}

#pragma mark - FORMBaseFormFieldCell

- (void)updateFieldWithDisabled:(BOOL)disabled {
    self.toggle.alpha = disabled ? 0.5f : 1.0f;
    self.toggle.enabled = disabled ? NO : YES;
}

- (void)updateWithField:(FORMField *)field {
    [super updateWithField:field];
    
    self.toggle.enabled = !field.disabled;
    self.disabled = field.disabled;
    self.toggle.on = [field.value boolValue];
    
    if ([field.accessibilityLabel length] > 0) {
        self.toggle.accessibilityLabel = field.accessibilityLabel;
    } else {
        self.toggle.accessibilityLabel = self.headingLabel.text;
    }
}

#pragma mark - Layout

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.toggle.frame = [self toggleFrame];
}

- (CGRect)toggleFrame {
    CGFloat marginX = FORMTextFieldCellMarginX;
    CGFloat marginTop = FORMToggleFieldCellMarginTop;
    CGFloat marginBotton = FORMToggleFieldCellMarginBottom;
    
    CGFloat width  = CGRectGetWidth(self.frame) - (marginX * 2);
    CGFloat height = CGRectGetHeight(self.frame) - marginTop - marginBotton;
    CGRect  frame  = CGRectMake(marginX, marginTop, width, height);
    
    return frame;
}

#pragma mark - Actions

- (void)toggleAction:(id)sender {
    self.field.value = [sender isOn] ? @YES : @NO;
    
    if ([self.delegate respondsToSelector:@selector(fieldCell:updatedWithField:)]) {
        [self.delegate fieldCell:self updatedWithField:self.field];
    }
}

#pragma mark - Styling

- (void)setTintColor:(UIColor *)tintColor {
    NSString *style = [self.field.styles valueForKey:FORMToggleTintColorKey];
    if ([style length] > 0) {
        tintColor = [[UIColor alloc] initWithHex:style];
    }
    
    self.toggle.onTintColor = tintColor;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    NSString *style = [self.field.styles valueForKey:FORMToggleBackgroundColorKey];
    if ([style length] > 0) {
        backgroundColor = [[UIColor alloc] initWithHex:style];
    }
    
    self.toggle.backgroundColor = backgroundColor;
}

@end
