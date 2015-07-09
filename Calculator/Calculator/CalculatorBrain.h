//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Gabrielle Stillman on 7/7/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//
#import "Operator.h"
#import <Foundation/Foundation.h>
//you must write a class called calculator brain array? that creates a data structure NSmutable array Dijkstras shutning yard there must be a method called sendOperator that allows you to send an operator and operand. needs to have a method that will give you the calcultor brain. and a muttable array. something that will calculate an NSMuttable array
/*
 CalculatorBrain * brain =[CalculatorBrain sharedCalculatorBrain];
 [brain sendOperator: op operand: myOperand];
 
 
 
 */

@interface CalculatorBrain : NSObject
@property NSMutableArray * expression;
- (void)sendOperator: (Operator*)theOperator  op: (NSNumber*) theOperand;
+(CalculatorBrain*) sharedCalculatorBrain;
-(NSNumber*) calculateWithOperand: (NSNumber*) theOperand;
-(void) allClear;







@end
