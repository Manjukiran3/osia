//
//  OSIATests.m
//  OSIATests
//
//  Created by dkhamsing on 7/22/16.
//  Copyright © 2016 dkhamsing. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Parser.h"

@interface OSIATests : XCTestCase

@end

@implementation OSIATests

- (void)testParse {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Parse"];

    Parser *p = [Parser new];
    [p getLatestDataWithCompletion:^(Data *d, NSError *e) {
        [expectation fulfill];
    }];
    
    [self waitForExpectationsWithTimeout:10 handler:^(NSError *error) {
        if (error!=nil)
            NSLog(@"Error: %@", error);
    }];    
}

@end
