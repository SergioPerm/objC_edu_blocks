//
//  AppDelegate.m
//  BlocksTest
//
//  Created by kluv on 28/05/2018.
//  Copyright © 2018 kluv. All rights reserved.
//

#import "AppDelegate.h"
#import "MyObject.h"

typedef void (^OurTestBlock)(void);
typedef NSString* (^OurTestBlock2)(NSInteger);

@interface AppDelegate ()

@property (copy, nonatomic) OurTestBlock testBlock;
@property (strong, nonatomic) NSString* name;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor lightGrayColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];

//    [self testMethod];
//
//    void (^testBlock)(void);
//    testBlock = ^{
//        NSLog(@"test block");
//    };
//
//    testBlock();
//    testBlock();
//    testBlock();
//
//    void (^testBlockWithParams)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
//        [self testmethodWithParams:string value:intValue];
//    };
//
//    testBlockWithParams(@"ololo", 12);
//
////    NSString* result = [self testReturnMethodWithParams:@"TEST STRING" value:123];
////    NSLog(@"%@", result);
//
//    NSString* (^testBlockReturn)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) {
//        return [self testReturnMethodWithParams:string value:intValue];
//    };
//
//    NSString* result = testBlockReturn(@"ololo epta", 77);
//
//    NSLog(@"%@", result);
    
//    __block NSString* testString = @"How is it possible?";
//
//    __block NSInteger i = 0;
//
//    void (^testBlock2)(void);
//
//    testBlock2 = ^{
////        NSLog(@"test block");
////        NSLog(@"%@", testString);
//
//        NSLog(@"%d", ++i);
//        testString = [NSString stringWithFormat:@"How is it possible? %d", i];
//        NSLog(@"%@", testString);
//    };
//
//    testBlock2();
//    testBlock2();
//    testBlock2();
    
//    NSArray* array = nil;
//
//    NSComparisonResult (^bbb)(id, id) = ^(id obj1, id obj2) {
//        return NSOrderedAscending;
//    };
//
//    array = [array sortedArrayUsingComparator:bbb];
    
//    void (^bbb)(void) = ^{
//        NSLog(@"BLOCK123!!!!");
//    };
//
//    [self testBlockMethod:bbb];
    
//    OurTestBlock testBlock2 = ^{
//        NSLog(@"TEST BLOCK OUR TEST BLOCK");
//    };
//
//    [self testBlockMethod:^{
//        NSLog(@"BLOCK!!!!");
//    }];
//
//    [self testBlockMethod2:testBlock2];
//
//    OurTestBlock2 tb = ^(NSInteger intValue){
//        return [NSString stringWithFormat:@"%d", intValue];
//    };
//
//    NSLog(@"%@",tb(2));
    
//    MyObject* myObj = [[MyObject alloc] init];
//
//    myObj.objName = @"OBJECT";
    
//    __weak MyObject* weakObj = myObj;
//
//    self.testBlock = ^ {
//        NSLog(@"%@", weakObj.objName);
//    };
//
//    self.testBlock();
    
    self.name = @"Hello!";
    
    MyObject* myObj2 = [[MyObject alloc] init];
    
    myObj2.objName = @"OBJECT";
    
//    [myObj2 testMethod:^{
//        NSLog(@"%@", self.name);
//    }];
    
    
    
    return YES;
}

- (void) testBlockMethod:(void (^)(void)) testBlock {
    
    NSLog(@"testBlockMethod");
    
    testBlock();
}

- (void) testBlockMethod2:(void (^)(void)) testBlock {
    
    NSLog(@"testBlockMethod");
    
    testBlock();
    testBlock();
}

- (void) testmethodWithParams:(NSString*) string value:(NSInteger) intValue {
    NSLog(@"testMethodWithParams: %@, %d", string, intValue);
}

- (NSString*) testReturnMethodWithParams:(NSString*) string value:(NSInteger) intValue {
    
    NSString* str = [NSString stringWithFormat: @"testReturnMethodWithParams: %@, %d", string, intValue];
    
    return str;
    
}

- (void) testMethod {
    NSLog(@"test method");
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
