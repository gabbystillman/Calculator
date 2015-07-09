//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Gabrielle Stillman on 7/7/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import "NSMutableArray+NSMutableArray_StackCategory_.h"
#import "NSNumber+ArithmeticProtocol.h"
#import "CalculatorBrain.h"
static CalculatorBrain * secretBrain;

@implementation CalculatorBrain
@synthesize expression;


+(CalculatorBrain*) sharedCalculatorBrain
{
    if (secretBrain == nil){
        // my secret calculatorbrain doesn't exist!
        // I must allocate and initialize it
        secretBrain = [[CalculatorBrain alloc] init];
        secretBrain.expression = [[NSMutableArray alloc] init];
        
    }
    
    return secretBrain;
}


-(void) allClear{
    self.expression= [[NSMutableArray alloc] init];
}
    
        


- (void)sendOperator: (Operator*)theOperator  op: (NSNumber*) theOperand
{
    [self.expression addObject:theOperand];
    [self.expression addObject: theOperator];
    
    
}

-(NSNumber*) calculateWithOperand: (NSNumber*) theOperand
{
    NSNumber* lhs;
    NSNumber* rhs;
   Operator* op;
    NSNumber* result;
    [self.expression addObject: theOperand];
    while(self.expression.count>1){
         rhs= [self.expression pop];
        op= [self.expression pop];
        lhs= [self.expression pop];
        NSLog((@"L:%@ S:%@ R:%@ "),lhs,op,rhs);
        result = [lhs performSelector: op.operation withObject: rhs];
        [self.expression push: result];
/* 
 
 */
        
    }
    return result;

}




    
    
    










@end

