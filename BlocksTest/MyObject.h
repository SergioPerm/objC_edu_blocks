//
//  MyObject.h
//  BlocksTest
//
//  Created by kluv on 02/06/2018.
//  Copyright © 2018 kluv. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ObjectBlock)(void);

@interface MyObject : NSObject

@property (strong, nonatomic) NSString* objName;

- (void) testMethod:(ObjectBlock) block;

@end
