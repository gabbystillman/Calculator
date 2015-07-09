//
//  NSMutableArray+NSMutableArray_StackCategory_.m
//  Calculator
//
//  Created by Gabrielle Stillman on 7/8/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import "NSMutableArray+NSMutableArray_StackCategory_.h"

@implementation NSMutableArray (NSMutableArray_StackCategory_)

-(void) push: (id) myId {
    [self addObject:myId];
}

-(id) pop {

    id obj= [self lastObject];
    [self removeLastObject];
    return obj;
    
}
@end
