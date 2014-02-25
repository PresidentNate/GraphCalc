//
//  GraphCalcTableViewController.h
//  GraphCalc
//
//  Created by Nate Soucy on 8/5/13.
//  Copyright (c) 2013 (Objective-C)hrist. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GraphCalcTableViewController : UITableViewController

@property (strong, nonatomic) NSArray *mathStrings;

@property (strong, nonatomic) IBOutlet UITableView *MathTable;

@end
