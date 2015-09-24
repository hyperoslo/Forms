@import XCTest;

#import "FORMFieldValue.h"

@interface FORMFieldValueTests : XCTestCase

@end

@implementation FORMFieldValueTests

- (void)testInitWithDictionary {
    FORMFieldValue *fieldValue = [[FORMFieldValue alloc] initWithDictionary:@{@"id": @"contract_type",
                                                                              @"title": @"Contract Type",
                                                                              @"info": @"This is ma' contract",
                                                                              @"value": @1,
									      @"positive_format": @"#,###.00",
									      @"negative_format": @"-#,###.00",
									      @"grouping_separator": @",",
									      @"decimal_separator": @".",
                                                                              @"default": @YES}];
    XCTAssertNotNil(fieldValue);
    XCTAssertEqualObjects(fieldValue.valueID, @"contract_type");
    XCTAssertEqualObjects(fieldValue.title, @"Contract Type");
    XCTAssertEqualObjects(fieldValue.info, @"This is ma' contract");
    XCTAssertEqualObjects(fieldValue.value, @1);
    XCTAssertEqualObjects(fieldValue.positiveFormat, @"#,###.00");
    XCTAssertEqualObjects(fieldValue.negativeFormat, @"-#,###.00");
    XCTAssertEqualObjects(fieldValue.groupingSeparator, @",");
    XCTAssertEqualObjects(fieldValue.decimalSeparator, @".");
    XCTAssertTrue(fieldValue.defaultValue);

    fieldValue = [[FORMFieldValue alloc] initWithDictionary:@{@"id": @0,
                                                              @"title": @"Full time"}];
    XCTAssertNotNil(fieldValue);
    XCTAssertEqualObjects(fieldValue.valueID, @0);
    XCTAssertEqualObjects(fieldValue.title, @"Full time");
}

@end
