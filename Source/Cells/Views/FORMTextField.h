@import TextField;

typedef NS_ENUM(NSInteger, TextFieldType) {
    TextFieldTypeDefault = 0,
    TextFieldTypeName,
    TextFieldTypeUsername,
    TextFieldTypePhoneNumber,
    TextFieldTypeNumber,
    TextFieldTypeFloat,
    TextFieldTypeAddress,
    TextFieldTypeEmail,
    TextFieldTypePassword,
    TextFieldTypeSelect,
    TextFieldTypeDate,
    TextFieldTypeCount,
    TextFieldTypeUnknown
};

@interface FORMTextField : TextField

@property (nonatomic, copy) NSString *typeString;
@property (nonatomic) TextFieldType type;
@property (nonatomic, copy) NSDictionary *styles;
@property (nonatomic, copy) NSString *info;
@property (nonatomic, getter = isActive)   BOOL active;

- (void)setMinusButtonColor:(UIColor *)color UI_APPEARANCE_SELECTOR;
- (void)setPlusButtonColor:(UIColor *)color UI_APPEARANCE_SELECTOR;

@end
