//
//  ViewController.m
//  Calculator
//
//  Created by Gary Davies on 21/10/13.
//  Copyright (c) 2013 Gary Davies. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

-(BOOL)isPhone {
    return (UI_USER_INTERFACE_IDIOM()==UIUserInterfaceIdiomPhone);
}

-(void)addResultField
{
    if([self isPhone])
    {
        mResult = [[UITextField alloc] initWithFrame:CGRectMake(32, 20, 256, 100)];
        mResult.font = [UIFont systemFontOfSize:48];
    }
    else
    {
        mResult = [[UITextField alloc] initWithFrame:CGRectMake(45, 42, 675, 150)];
        mResult.font = [UIFont systemFontOfSize:100];
    }
    mResult.textColor = [UIColor colorWithRed:0.196 green:0.3098 blue:0.52 alpha:1.0];
    mResult.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    mResult.textAlignment = UITextAlignmentRight;
    mResult.borderStyle = UITextBorderStyleRoundedRect;
    mResult.text = @"0";
    mError = false;
    [self.view addSubview:mResult];
    
    mAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

-(void)recoverFromError
{
    if(mError == true)
    {
        [mAppDelegate reset];
        mError = false;
    }    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addResultField];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/* Zero button handler */
-(IBAction)zeroOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :0 :self];
    
    NSLog(@"Zero clicked");
}

/* One button handler */
-(IBAction)oneOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :1 :self];
    
    NSLog(@"One clicked");
}

/* Two button handler */
-(IBAction)twoOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :2 :self];
    
    NSLog(@"Two clicked");
}

/* Three button handler */
-(IBAction)threeOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :3 :self];
    
    NSLog(@"Three clicked");
}

/* Four button handler */
-(IBAction)fourOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :4 :self];
        
    NSLog(@"Four clicked");
}

/* Five button handler */
-(IBAction)fiveOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :5 :self];
    
    NSLog(@"Five clicked");
}

/* Six button handler */
-(IBAction)sixOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :6 :self];
    
    NSLog(@"Six clicked");
}

/* Seven button handler */
-(IBAction)sevenOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :7 :self];
    
    NSLog(@"Seven clicked");
}

/* Eight button handler */
-(IBAction)eightOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :8 :self];
    
    NSLog(@"Eight clicked");    
}

/* Nine button handler */
-(IBAction)nineOnClick
{
    [self recoverFromError];
    [mAppDelegate operateValue :9 :self];

    NSLog(@"Nine clicked");
}

/* Add button handler */
-(IBAction)addOnClick
{
    if(mError == false)
    {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate add];
    }
    
    NSLog(@"Add clicked");
}

/* Multiply button handler */
-(IBAction)multiplyOnClick
{
    if(mError == false)
    {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate multiply];
    }
    
    NSLog(@"Multiply clicked");
}

/* Result update from Calculator */
-(void)resultUpdate:(int)result
{
    NSLog(@"ViewController.resultUpdate result: %d", result);

    NSString *text;
    if(result >= 0)
    {
        text = [NSString stringWithFormat:@"%d", result];
    }
    else
    {
        text = @"Error";
        mError = true;
    }
    mResult.text = text;
}

@end
