@import Foundation;

#import "FORMField.h"

@interface FORMFieldValue : NSObject

@property (nonatomic) id valueID;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *info;
@property (nonatomic) NSArray *targets;
@property (nonatomic) FORMField *field;
@property (nonatomic) NSNumber *value;
@property (nonatomic) BOOL defaultValue;
@property (nonatomic) NSString *positiveFormat;
@property (nonatomic) NSString *negativeFormat;
@property (nonatomic) NSString *groupingSeparator;
@property (nonatomic) NSString *decimalSeparator;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary NS_DESIGNATED_INITIALIZER;

- (BOOL)identifierIsEqualTo:(id)identifier;

@end
