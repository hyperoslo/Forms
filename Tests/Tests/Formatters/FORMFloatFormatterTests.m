@import XCTest;

#import "FORMFloatFormatter.h"

@interface FORMFloatFormatterTests : XCTestCase

@end

@implementation FORMFloatFormatterTests

- (void)testFormatString {
    FORMFloatFormatter *formatter = [FORMFloatFormatter new];
    XCTAssertEqualObjects(@"123,45", [formatter formatString:@"123,45" reverse:NO]);
    XCTAssertEqualObjects(@"123,45", [formatter formatString:@"123.45" reverse:NO]);

    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    numberFormatter.positiveFormat = @"###.##";
    numberFormatter.decimalSeparator = @",";
    XCTAssertEqualObjects(@"123", [formatter formatString:@"123,00" reverse:NO formatter:numberFormatter]);

    numberFormatter.positiveFormat = @"###.00";
    XCTAssertEqualObjects(@"123,00", [formatter formatString:@"123,00" reverse:NO formatter:numberFormatter]);
    XCTAssertEqualObjects(@"123,00", [formatter formatString:@"123.00" reverse:NO formatter:numberFormatter]);

    numberFormatter.decimalSeparator = @".";
    numberFormatter.groupingSeparator = @",";
    XCTAssertEqualObjects(@"123.40", [formatter formatString:@"123.40" reverse:NO formatter:numberFormatter]);

    numberFormatter.positiveFormat = @"#,###.00";
    XCTAssertEqualObjects(@"1,123.00", [formatter formatString:@"1123.00" reverse:NO formatter:numberFormatter]);
    XCTAssertEqualObjects(@"123,456,789.00", [formatter formatString:@"123456789.00" reverse:NO formatter:numberFormatter]);

    numberFormatter.positiveFormat = @"$#,###.00";
    XCTAssertEqualObjects(@"$123,456,789.00", [formatter formatString:@"123456789.00" reverse:NO formatter:numberFormatter]);
}

@end
