//
//  NSMutableArray+NSMutableArray_StackCategory_.h
//  Calculator
//
//  Created by Gabrielle Stillman on 7/8/15.
//  Copyright (c) 2015 Gabrielle Stillman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (NSMutableArray_StackCategory_)
-(void) push: (id)myId;
-(id) pop;
@end
