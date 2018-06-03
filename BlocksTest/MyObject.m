//
//  MyObject.m
//  BlocksTest
//
//  Created by kluv on 02/06/2018.
//  Copyright © 2018 kluv. All rights reserved.
//

#import "MyObject.h"
//123123123
@interface MyObject ()

@property (copy, nonatomic) ObjectBlock objBlock;

@end

@implementation MyObject

- (id) init {
    self = [super init];
    if (self) {
        
        __weak MyObject* weakSelf = self;
            
        self.objBlock = ^{
            NSLog(@"%@", weakSelf.objName);
        };
        
    }
    return self;
}

- (void) dealloc {
    NSLog(@"MyObject is deallocated");
}
@end

    
