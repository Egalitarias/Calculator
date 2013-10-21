//
//  ViewController.h
//  Calculator
//
//  Created by Gary Davies on 21/10/13.
//  Copyright (c) 2013 Gary Davies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorResultProtocol.h"

@class AppDelegate;

@interface ViewController : UIViewController <CalculatorResultProtocol>
{
@private
    AppDelegate *mAppDelegate;
    UITextField *mResult;
    bool mError;
}

/* button handlers */
-(IBAction)zeroOnClick;
-(IBAction)oneOnClick;
-(IBAction)twoOnClick;
-(IBAction)threeOnClick;
-(IBAction)fourOnClick;
-(IBAction)fiveOnClick;
-(IBAction)sixOnClick;
-(IBAction)sevenOnClick;
-(IBAction)eightOnClick;
-(IBAction)nineOnClick;
-(IBAction)addOnClick;
-(IBAction)multiplyOnClick;

/* Result update from Calculator */
-(void)resultUpdate:(int)result;

@end
