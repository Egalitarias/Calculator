//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Gary Davies on 21/10/13.
//  Copyright (c) 2013 Gary Davies. All rights reserved.
//

#import "Calculator.h"
#import "CalculatorTests.h"

@implementation CalculatorTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    //STFail(@"Unit tests are not implemented yet in CalculatorTests");
}

-(void)testCalculator
{
    id<CalculatorProtocol> calc = [[Calculator alloc] init];
    
    STAssertNotNil(calc, @"calc is nil");
    STAssertTrue([calc isOperation: OPERATION_ENTRY], @"calc is operation enter");
}

-(void)testCalculatorEntry
{
    id<CalculatorProtocol> calc = [[Calculator alloc] init];
    int value;
    int result;
    
    STAssertNotNil(calc, @"calc is nil");
    STAssertTrue([calc isOperation: OPERATION_ENTRY], @"calc is operation enter");
    
    value = 13;
    result = 0;
    result = [calc operateValue:value];
    STAssertTrue(result == 13, @"calc operate value 13, result == 13");    
}

-(void)testCalculatorAdd
{
    id<CalculatorProtocol> calc = [[Calculator alloc] init];
    int value;
    int result;
    
    STAssertNotNil(calc, @"calc is nil");
    STAssertTrue([calc isOperation: OPERATION_ENTRY], @"calc is operation enter");
    
    value = 5;
    result = 0;
    result = [calc operateValue:value];
    STAssertTrue(result == 5, @"calc operate value 5, result == 5");
    
    [calc add];
    STAssertTrue([calc isOperation: OPERATION_ADD], @"calc is operation add");

    value = 7;
    result = 0;
    result = [calc operateValue:value];
    STAssertTrue(result == 12, @"calc operate 5 + 7 = 12, result == 12");
    STAssertTrue([calc isOperation: OPERATION_ENTRY], @"calc is operation enter");
}

-(void)testCalculatorMultiply
{
    id<CalculatorProtocol> calc = [[Calculator alloc] init];
    int value;
    int result;
    
    STAssertNotNil(calc, @"calc is nil");
    STAssertTrue([calc isOperation: OPERATION_ENTRY], @"calc is operation enter");
    
    value = 5;
    result = 0;
    result = [calc operateValue:value];
    STAssertTrue(result == 5, @"calc operate value 5, result == 5");
    
    [calc multiply];
    STAssertTrue([calc isOperation: OPERATION_MULTIPLY], @"calc is operation multiply");
    
    value = 7;
    result = 0;
    result = [calc operateValue:value];
    STAssertTrue(result == 35, @"calc operate 5 * 7 = 35, result == 35");
    STAssertTrue([calc isOperation: OPERATION_ENTRY], @"calc is operation enter");
}

-(void)testCalculatorIsOperation
{
    id<CalculatorProtocol> calc = [[Calculator alloc] init];
    
    STAssertNotNil(calc, @"calc is nil");
    STAssertTrue([calc isOperation: OPERATION_ENTRY], @"calc is operation enter");
    
    [calc multiply];
    STAssertTrue([calc isOperation: OPERATION_MULTIPLY], @"calc is operation multiply");
    
    [calc add];
    STAssertTrue([calc isOperation: OPERATION_ADD], @"calc is operation add");
}

@end
