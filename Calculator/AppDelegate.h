//
//  AppDelegate.h
//  Calculator
//
//  Created by Gary Davies on 21/10/13.
//  Copyright (c) 2013 Gary Davies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorProtocol.h"
#import "CalculatorResultProtocol.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
@private
    id<CalculatorProtocol> calc;
    id<CalculatorResultProtocol> resultDelegate;
}

@property (strong, nonatomic) UIWindow *window;

/* Calculator operations passed to Calculator*/
-(void)operateValue :(int)value :(id<CalculatorResultProtocol>)delegate;
-(void)add;
-(void)multiply;
-(void)reset;

@end
