//
//  CalculatorProtocol.h
//  Calculator
//
//  Created by Gary Davies on 21/10/13.
//  Copyright (c) 2013 Gary Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

/* Calculator must implement this protocol and its methods */
@protocol CalculatorProtocol <NSObject>

-(int)operateValue: (int)value;
-(void)add;
-(void)multiply;
-(bool)isOperation: (int)operation;
-(void)reset;
@end
