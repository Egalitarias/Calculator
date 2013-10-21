//
//  Calculator.h
//  Calculator
//
//  Created by Gary Davies on 21/10/13.
//  Copyright (c) 2013 Gary Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculatorProtocol.h"

enum
{
    OPERATION_ENTRY = 1,
    OPERATION_ADD = 2,
    OPERATION_MULTIPLY = 3
};

/* 
    This class can add and multiply numbers
 
    For example to add 3 and 7 use:
    [calc operateValue: 3]
    [calc add]
    int result = [calc operateValue: 7]
 
    For example to multiply 4 and 8 and then add 9 use:
    [calc operateValue: 4]
    [calc multiply]
    [calc operateValue: 8]
    [calc add]
    int result = [calc operateValue: 9]
 */
@interface Calculator : NSObject <CalculatorProtocol>
{
    
@private
    int mOperation;
}

@property (readonly) int result;

-(int)operateValue: (int)value;
-(void)add;
-(void)multiply;
-(bool)isOperation: (int)operation;

/* Recover from error state */
-(void)reset;

@end
