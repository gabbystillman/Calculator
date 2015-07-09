//
//  ViewController.m
//  Calculator
//
//  Created by Gabrielle Stillman on 7/6/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//
#import "ViewController.h"
#import "Operator.h"
#import  "NSNumber+ArithmeticProtocol.h"
#import "CalculatorBrain.h"

@interface ViewController ()
    

@end

@implementation ViewController
@synthesize myAnswer;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"??");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) buttonPressed:(id)sender{
    Operator* operator;
    
    NSNumber* myOperand;
    NSNumber * num;
     CalculatorBrain * brain = [CalculatorBrain sharedCalculatorBrain];
    UIButton* button= (UIButton*) sender;
    char myChar;
    NSInteger tag= button.tag;
    switch (tag) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        
            if([self.myAnswer.text isEqualToString: @"0"]){
                self.myAnswer.text= [NSString stringWithFormat: @ "%ld",(long)tag];
            }
            else {
                self.myAnswer.text=[NSString stringWithFormat: @"%@%ld", self.myAnswer.text, tag];
                
            }
            break;
        case 40:
            myChar = [self.myAnswer.text characterAtIndex: self.myAnswer.text.length-1];
            if(myChar != '.'){
                self.myAnswer.text = [self.myAnswer.text stringByAppendingString: @"."];
            }
            break;
            
       
            
            
        case 100: //clear button
        [brain allClear];
            self.myAnswer.text=@" ";
          
            break;
        case 200:    // add button
            operator = [[Operator alloc] initWithOperation:(@selector(add:)) precedence:(10)];
           myOperand= [NSNumber numberWithFloat:self.myAnswer.text.floatValue];
            [brain sendOperator:operator op:myOperand];
            self.myAnswer.text= @"";
            
            break;
        case 201:       //subtract button
            operator = [[Operator alloc] initWithOperation:(@selector(subtract:)) precedence:(10)];
            myOperand= [NSNumber numberWithFloat:self.myAnswer.text.floatValue];
            [brain sendOperator:operator op:myOperand];
            self.myAnswer.text= @"";
            break;
        case 202:       //multiply
            operator = [[Operator alloc] initWithOperation:(@selector(multiply:)) precedence:(10)];
            myOperand= [NSNumber numberWithFloat:self.myAnswer.text.floatValue];
            [brain sendOperator:operator op:myOperand];
            self.myAnswer.text= @"";
            break;
        case 203:  //divide
            operator = [[Operator alloc] initWithOperation:(@selector(divide:)) precedence:(10)];
            myOperand= [NSNumber numberWithFloat:self.myAnswer.text.floatValue];
            [brain sendOperator:operator op:myOperand];
            self.myAnswer.text= @"";
            break;
        case 204: //equal sign
            myOperand= [NSNumber numberWithFloat:self.myAnswer.text.floatValue];
            num= [brain calculateWithOperand: myOperand ];
            self.myAnswer.text= num.stringValue;
            [brain allClear];
            break;
            
        }
    }
    
    



            
    
        

    
    




@end

