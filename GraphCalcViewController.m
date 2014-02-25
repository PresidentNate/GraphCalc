//
//  GraphCalcViewController.m
//  GraphCalc
//
//  Created by Nathan Soucy on 8/31/12.
//  Copyright (c)2013 (Objective-C)hrist, inc. All rights reserved.
//

#import "GraphCalcViewController.h"
#import "math.h"

@interface GraphCalcViewController ()

@end

@implementation GraphCalcViewController

int GraphCalcOp = -1;
int num = 1;
int switcher = 0;

bool second = NO;
bool alpha = NO;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.firstNum = @"";
    self.storeNum = @"";
    self.mathString = @"";
    
    self.tableVC = [[GraphCalcTableViewController alloc] initWithStyle:0];

}

- (void)viewDidUnload
{ //note to self, save data in andwerField(s)
    self.answerField.text = [NSString stringWithFormat:@""];
    
    self.testField.text = [NSString stringWithFormat:@""];
    
    self.answerField1.text = [NSString stringWithFormat:@""];
    self.answerField2.text = [NSString stringWithFormat:@""];
    self.answerField3.text = [NSString stringWithFormat:@""];
    self.answerField4.text = [NSString stringWithFormat:@""];
    self.answerField5.text = [NSString stringWithFormat:@""];
    self.answerField6.text = [NSString stringWithFormat:@""];
    self.answerField7.text = [NSString stringWithFormat:@""];
    self.answerField8.text = [NSString stringWithFormat:@""];
    self.answerField9.text = [NSString stringWithFormat:@""];
    self.answerField10.text = [NSString stringWithFormat:@""];
    self.answerField11.text = [NSString stringWithFormat:@""];
    self.answerField12.text = [NSString stringWithFormat:@""];
    self.answerField0.text = [NSString stringWithFormat:@""];
    
    
    self.firstNum = @"";
    self.storeNum = @"";
    
    num = 1;
    GraphCalcOp = -1;
    switcher = 0;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


- (IBAction)showNumPad:(UIButton *)sender {
    
}


//Top menu level buttons
- (IBAction)y_equals:(UIButton *)sender {
    
}
- (IBAction)windowButton:(UIButton *)sender {
    
}
- (IBAction)zoomButton:(UIButton *)sender {
    
}
- (IBAction)traceButton:(UIButton *)sender {
    
}
- (IBAction)graphButton:(UIButton *)sender {
    
}
//Function buttons
- (IBAction)secondButton:(UIButton *)sender {
    second = YES;
}
- (IBAction)modeButton:(UIButton *)sender {
}
- (IBAction)delButton:(UIButton *)sender {
}

//Arrow buttons
- (IBAction)leftArrowButton:(UIButton *)sender {
}
- (IBAction)upArrowButton:(UIButton *)sender {
    if ( switcher == 0) {
        switcher = 14;
    } else {
        switcher--;
    }
    [self textfieldToAppendTo:(int)switcher withString:(NSString*)@""];
}
- (IBAction)rightArrowButton:(UIButton *)sender {
}
- (IBAction)downArrowButton:(UIButton *)sender {
    if ( switcher == 14) {
        switcher = 0;
    } else {
        switcher++;
    }
}

//Function buttons
- (IBAction)alphaButton:(UIButton *)sender {
    alpha = YES;
}

- (IBAction)specialCharButton:(UIButton *)sender { //X,T, theta, n
}

// might remove these
- (IBAction)statButton:(UIButton *)sender { 
}
- (IBAction)mathButton:(UIButton *)sender {
}
- (IBAction)appsButton:(UIButton *)sender {
}
- (IBAction)programButton:(UIButton *)sender {
}
- (IBAction)varsButton:(UIButton *)sender {
}
// end

- (IBAction)xMinusButton:(UIButton *)sender {
    GraphCalcOp = 9;
    [self textfieldToAppendTo:(int)switcher withString:(NSString*)@"(-1)"];
 //   self.answerField.text = [NSString stringWithFormat:@"%@ (-1)",self.answerField.text];
}

- (IBAction)squarredButton:(UIButton *)sender {
    if ( second == YES ) {
        GraphCalcOp = 12;
        [self textfieldToAppendTo:(int)switcher withString:(NSString*)@"sqrt("];
    } else {
        GraphCalcOp = 13;
        [self textfieldToAppendTo:(int)switcher withString:(NSString*)@"sq("];
    }
}

- (IBAction)clearButton:(UIButton *)sender {//clear out all text fields
    self.answerField.text = [NSString stringWithFormat:@""];
    
    self.testField.text = [NSString stringWithFormat:@""];
    
    self.answerField1.text = [NSString stringWithFormat:@""];
    self.answerField2.text = [NSString stringWithFormat:@""];
    self.answerField3.text = [NSString stringWithFormat:@""];
    self.answerField4.text = [NSString stringWithFormat:@""];
    self.answerField5.text = [NSString stringWithFormat:@""];
    self.answerField6.text = [NSString stringWithFormat:@""];
    self.answerField7.text = [NSString stringWithFormat:@""];
    self.answerField8.text = [NSString stringWithFormat:@""];
    self.answerField9.text = [NSString stringWithFormat:@""];
    self.answerField10.text = [NSString stringWithFormat:@""];
    self.answerField11.text = [NSString stringWithFormat:@""];
    self.answerField12.text = [NSString stringWithFormat:@""];
    self.answerField0.text = [NSString stringWithFormat:@""];
    
    
    self.firstNum = @"";
    self.storeNum = @"";
    
    num = 1;
    GraphCalcOp = -1;
    switcher = 0;
}

- (IBAction)exponetButton:(UIButton *)sender {
    GraphCalcOp = 7;
    
    
}
- (IBAction)logButton:(UIButton *)sender {
    GraphCalcOp = 8;
    [self textfieldToAppendTo:switcher withString: @"log("];
    
  //  self.answerField.text = [NSString stringWithFormat:@"%@ log( ",self.answerField.text];
}

- (IBAction)lnButton:(UIButton *)sender {
    GraphCalcOp = 10;
    [self textfieldToAppendTo:switcher withString: @"ln("];
 //   self.answerField.text = [NSString stringWithFormat:@"%@ ln( ", self.answerField.text];
}

//Sin/Cos/Tan

- (IBAction)sineButton:(UIButton *)sender {
    GraphCalcOp = 4;
    [self textfieldToAppendTo:switcher withString: @"sin("];
 //   self.answerField.text = [NSString stringWithFormat:@"%@ sin( ",self.answerField.text];
}
- (IBAction)cosineButton:(UIButton *)sender {
    GraphCalcOp = 5;
    [self textfieldToAppendTo:switcher withString: @"cos("];
//    self.answerField.text = [NSString stringWithFormat:@"%@ cos( ", self.answerField.text ];
}
- (IBAction)tangentButton:(UIButton *)sender {
    GraphCalcOp = 6;
    [self textfieldToAppendTo:switcher withString: @"tan("];
   // self.answerField.text = [NSString stringWithFormat:@"%@ tan( ", self.answerField.text ];
}

//Number Buttons
- (IBAction)zeroButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"0"];
    
    self.firstNum = [NSString stringWithFormat:@"%@0",self.firstNum];

}
- (IBAction)oneButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"1"];
            
    self.firstNum = [NSString stringWithFormat:@"%@1",self.firstNum];

}
- (IBAction)twoButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"2"];
     
    self.firstNum = [NSString stringWithFormat:@"%@2",self.firstNum];

}
- (IBAction)threeButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"3"];
        
    self.firstNum = [NSString stringWithFormat:@"%@3",self.firstNum];

}
-(IBAction)fourButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"4"];
       
    self.firstNum = [NSString stringWithFormat:@"%@4",self.firstNum];
    
}
- (IBAction)fiveButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"5"];
      
    self.firstNum = [NSString stringWithFormat:@"%@5",self.firstNum];

}
- (IBAction)sixButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"6"];
    
    self.firstNum = [NSString stringWithFormat:@"%@6",self.firstNum];

}
- (IBAction)sevenButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"7"];
  
    self.firstNum = [NSString stringWithFormat:@"%@7",self.firstNum];

}
- (IBAction)eightButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"8"];
//    self.answerField.text = [NSString stringWithFormat:@"%@8",self.answerField.text];
  
    self.firstNum = [NSString stringWithFormat:@"%@8",self.firstNum];
}
- (IBAction)nineButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"9"];
//    self.answerField.text = [NSString stringWithFormat:@"%@9",self.answerField.text];
          
    self.firstNum = [NSString stringWithFormat:@"%@9",self.firstNum];

}
- (IBAction)decimalButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"."];
//    self.answerField.text = [NSString stringWithFormat:@"%@.",self.answerField.text];
    
    self.firstNum = [NSString stringWithFormat:@"%@.",self.firstNum];

}
- (IBAction)negativeButton:(UIButton *)sender {
    [self textfieldToAppendTo:switcher withString: @"-"];
                       
//    self.answerField.text = [NSString stringWithFormat:@"%@ negative ",self.answerField.text];

}

//Math buttons

- (IBAction)multiplicationButton:(UIButton *)sender {
    GraphCalcOp = 0;
    [self textfieldToAppendTo:switcher withString: @" * "];
//    self.answerField.text = [NSString stringWithFormat:@"%@ * ",self.answerField.text];
  
    
    self.storeNum = self.firstNum;
    self.firstNum = @"";
}

- (IBAction)divisionButton:(UIButton *)sender {
    GraphCalcOp = 1;

    [self textfieldToAppendTo:switcher withString: @" / "];
//    self.answerField.text = [NSString stringWithFormat:@"%@ / ",self.answerField.text];
    
    self.storeNum = self.firstNum;
    self.firstNum = @"";
    
}


- (IBAction)plusButton:(UIButton *)sender {
    GraphCalcOp = 2;
    
    [self textfieldToAppendTo:switcher withString: @" + "];
    
    self.storeNum = self.firstNum;
    self.firstNum = @"";

}

- (IBAction)minusButton:(UIButton *)sender {
    GraphCalcOp = 3;
    
    [self textfieldToAppendTo:switcher withString: @" - "];
    
//    self.answerField.text = [NSString stringWithFormat:@"%@ - ",self.answerField.text];
    
    self.storeNum = self.firstNum;
    self.firstNum = @"";

}

double answer;
long double e = 2.718281828459045;

- (IBAction)enterButton:(UIButton *)sender {

    second = NO;
            
    [self textfieldToAppendTo:switcher withString: @""];
    
    long double first = [self.firstNum longLongValue];
    long double store = [self.storeNum longLongValue];

    
    switch (GraphCalcOp) {
                    
        case 0:
            answer = store * first;
            break;
            
        case 1:
            answer = store / first;
            break;
            
        case 2:
            answer = store + first;
            break;
            
        case 3:
            answer = store - first;
            break;
            
        // Sin // Cos // Tan  
        case 4:
            answer = sin( first );
            break;
        case 5:
            answer = cos( first );
            break;
        case 6:
            answer = tan( first );
            break;
            
        case 7:
            break;
            
        case 8:
            answer = log10l( first );
            break;
            
        case 9:

            answer = 1 / first;
            break;
            
        case 10: //ln
                //test: ln(5)= 1.609427912
                //needs some work, it's mostly right, but there is some issues
            answer = log( first / e ) +1;
            break;
            
        case 12:
            answer = sqrt([self.firstNum doubleValue]);
            break;
        
        case 13:
            answer = [self.firstNum doubleValue] * [self.firstNum doubleValue];
            break;
        
    }
    
    
    [self textfieldToAppendTo:switcher withString:[NSString stringWithFormat:@" = %f" ,answer]];
        
    
    self.mathString = @"";
    self.firstNum = @"";
    self.storeNum = @"";
    
    if ( switcher == 14) {
        switcher = 0;
    } else {
        switcher++;
    }
}


- (IBAction)commaButton:(UIButton *)sender {
        
}
    
    
- (IBAction)openParenButton:(UIButton *)sender {
    self.mathString = [NSString stringWithFormat:@" ( "];
    [self textfieldToAppendTo:switcher withString: self.mathString];}
    
- (IBAction)closeParenButton:(UIButton *)sender {
    self.mathString = [NSString stringWithFormat:@" ) "];
    [self textfieldToAppendTo:switcher withString: self.mathString];}


/* --when this is complete, version # = 0.2.0
 
 method to switch between text lines:
 uses switch statement
 params: 1) number for switch statement case
         2) string to append to the line (the number or symbol)
         --uses self.mathematics array / 
 switch statement:
    chanegs self.answerfield(#).text line to append the given params to
 
 */
-(void)textfieldToAppendTo:(int)num withString:(NSString*)string {
        
    switch (num) {
        case 0:
            self.answerField0.text = [NSString stringWithFormat:@"%@%@",self.answerField0.text,string];
            break;
            
        case 1:
            self.answerField.text = [NSString stringWithFormat:@"%@%@",self.answerField.text,string];            
            break;
       
        case 2:
            self.testField.text = [NSString stringWithFormat:@"%@%@",self.testField.text,string];
            break;
        
        case 3:
            self.answerField1.text = [NSString stringWithFormat:@"%@%@",self.answerField1.text,string];
            break;
        
        case 4:
            self.answerField2.text = [NSString stringWithFormat:@"%@%@",self.answerField2.text,string];
            break;
        
        case 5:
            self.answerField3.text = [NSString stringWithFormat:@"%@%@",self.answerField3.text,string];
            break;
        
        case 6:
            self.answerField4.text = [NSString stringWithFormat:@"%@%@",self.answerField4.text,string];
            break;

        case 7:
            self.answerField5.text = [NSString stringWithFormat:@"%@%@",self.answerField5.text,string];
            break;
        
        case 8:
            self.answerField6.text = [NSString stringWithFormat:@"%@%@",self.answerField6.text,string];
            break;
        
        case 9:
            self.answerField7.text = [NSString stringWithFormat:@"%@%@",self.answerField7.text,string];
            break;

        case 10:
            self.answerField8.text = [NSString stringWithFormat:@"%@%@",self.answerField8.text,string];
            break;
        
        case 11:
            self.answerField9.text = [NSString stringWithFormat:@"%@%@",self.answerField9.text,string];
            break;
        
        case 12:
            self.answerField10.text  = [NSString stringWithFormat:@"%@%@",self.answerField10.text,string];
            self.answerField10.text = [NSString stringWithFormat:@"%@%@",self.answerField10.text,string];
            break;
            
        case 13:
            self.answerField11.text = [NSString stringWithFormat:@"%@%@",self.answerField11.text,string];
            break;
            
        case 14:
            self.answerField12.text = [NSString stringWithFormat:@"%@%@",self.answerField12.text,string];
            break;
            
            
        default:
            
            self.answerField0.text = [NSString stringWithFormat:@""];
            
            self.answerField.text = [NSString stringWithFormat:@""];
            
            self.testField.text = [NSString stringWithFormat:@""];
            
            self.answerField1.text = [NSString stringWithFormat:@""];
            self.answerField2.text = [NSString stringWithFormat:@""];
            self.answerField3.text = [NSString stringWithFormat:@""];
            self.answerField4.text = [NSString stringWithFormat:@""];
            self.answerField5.text = [NSString stringWithFormat:@""];
            self.answerField6.text = [NSString stringWithFormat:@""];
            self.answerField7.text = [NSString stringWithFormat:@""];
            self.answerField8.text = [NSString stringWithFormat:@""];
            self.answerField9.text = [NSString stringWithFormat:@""];
            self.answerField10.text = [NSString stringWithFormat:@""];
            self.answerField11.text = [NSString stringWithFormat:@""];
            self.answerField12.text = [NSString stringWithFormat:@""];

            
            break;
    }
        
    
}


@end

