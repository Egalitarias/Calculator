//
//  Calculator.m
//  Calculator
//
//  Created by Gary Davies on 21/10/13.
//  Copyright (c) 2013 Gary Davies. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

/* Construct and initialise Calculator: OPERATION_ENTRY, result 0 */
-(id)init
{
    self = [super init];
    if(self != nil)
    {
        mOperation = OPERATION_ENTRY;
        _result = 0;
    }
    return self;
}

/* operate based on currnet operation using value */
-(int)operateValue: (int)value
{
    switch(mOperation)
    {
        case OPERATION_ENTRY:
        {
            NSLog(@"Operation Entry, result: %d", _result);
            _result = value;
            break;
        }
        case OPERATION_ADD:
        {
            NSLog(@"Operation Add, result: %d", _result);
            _result += value;
            NSLog(@"Operation Add, result: %d", _result);
            mOperation = OPERATION_ENTRY;
            break;
        }
        case OPERATION_MULTIPLY:
        {
            NSLog(@"Operation Multiply");
            _result *= value;
            mOperation = OPERATION_ENTRY;
            break;
        }
        default:
        {
            NSLog(@"Invalid operation");
            break;
        }
    }
    return _result;
}

/* set next operation to add */
-(void)add
{
    mOperation = OPERATION_ADD;
}

/* set next operation to multiply */
-(void)multiply
{
    mOperation = OPERATION_MULTIPLY;
}

/* check operation for testing */
-(bool)isOperation: (int)operation
{
    return mOperation == operation;
}

/* Recover from error state */
-(void)reset
{
    mOperation = OPERATION_ENTRY;
    _result = 0;
}
@end
