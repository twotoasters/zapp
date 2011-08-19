//
//  ZappSimulatorController.h
//  Zapp
//
//  Created by Jim Puls on 8/16/11.
//  Copyright (c) 2011 Square, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iPhoneSimulatorRemoteClient.h"

typedef enum {
    ZappSimulatorControllerPlatformiPhone = 1,
    ZappSimulatorControllerPlatformiPad = 2
} ZappSimulatorControllerPlatform;

@interface ZappSimulatorController : NSObject <DTiPhoneSimulatorSessionDelegate>

@property (strong) NSURL *appURL;
@property (strong) NSArray *arguments;
@property (strong) NSDictionary *environment;
@property ZappSimulatorControllerPlatform platform;
@property (strong) NSString *sdk;
@property (strong) NSString *simulatorOutputPath;

- (BOOL)launchSessionWithOutputBlock:(ZappOutputBlock)theOutputBlock completionBlock:(ZappResultBlock)theCompletionBlock;

@end