#import "FORMSpacerFieldCell.h"
@import Hex;

@interface FORMSpacerFieldCell ()

@end

@implementation FORMSpacerFieldCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (!self) return nil;

    self.headingLabel.hidden = YES;

    return self;
}

#pragma mark - Layout

- (void)layoutSubviews {
    [super layoutSubviews];
}

@end
