//
//  GraphCalcViewController.h
//  GraphCalc
//
//  Created by Nathan Soucy on 8/31/12.
//  Copyright (c)2013 (Objective-C)hrist, inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GraphCalcTableViewController.h"
@interface GraphCalcViewController : UIViewController

@property (strong, nonatomic) GraphCalcTableViewController *tableVC;

@property (strong, nonatomic) NSString *firstNum;
@property (strong, nonatomic) NSString *storeNum;

@property (strong, nonatomic) NSString *mathString;


@property (strong, nonatomic) IBOutlet UITextField *answerField0; //first

@property (strong, nonatomic) IBOutlet UITextField *answerField;

@property (strong, nonatomic) IBOutlet UITextField *testField;

@property (strong, nonatomic) IBOutlet UITextField *answerField1;
@property (strong, nonatomic) IBOutlet UITextField *answerField2;
@property (strong, nonatomic) IBOutlet UITextField *answerField3;
@property (strong, nonatomic) IBOutlet UITextField *answerField4;
//end iPhone 5 fields (change these to table view text fields, to siplify and unify


@property (strong, nonatomic) IBOutlet UITextField *answerField5;
@property (strong, nonatomic) IBOutlet UITextField *answerField6;
@property (strong, nonatomic) IBOutlet UITextField *answerField7;
@property (strong, nonatomic) IBOutlet UITextField *answerField8;
@property (strong, nonatomic) IBOutlet UITextField *answerField9;
@property (strong, nonatomic) IBOutlet UITextField *answerField10;
@property (strong, nonatomic) IBOutlet UITextField *answerField11;
@property (strong, nonatomic) IBOutlet UITextField *answerField12;
//ends iPad fields

-(void)textfieldToAppendTo:(int)num withString:(NSString*)string;


@end
