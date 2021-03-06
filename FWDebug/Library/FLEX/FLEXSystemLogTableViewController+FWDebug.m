//
//  FLEXSystemLogTableViewController+FWDebug.m
//  FWDebug
//
//  Created by wuyong on 17/3/3.
//  Copyright © 2017年 ocphp.com. All rights reserved.
//

#import "FLEXSystemLogTableViewController+FWDebug.h"
#import "FWDebugFishhook.h"
#import "FWDebugManager+FWDebug.h"

@implementation FLEXSystemLogTableViewController (FWDebug)

+ (void)load
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    if ([FWDebugFishhook isLogEnabled]) {
        [FWDebugManager fwDebugSwizzleClass:self method:@selector(allLogMessagesForCurrentProcess) with:@selector(fwDebugAllLogMessagesForCurrentProcess)];
    }
#pragma clang diagnostic pop
}

+ (NSArray *)fwDebugAllLogMessagesForCurrentProcess
{
    if ([FWDebugFishhook isLogEnabled]) {
        return [FWDebugFishhook allLogMessages];
    } else {
        return [self fwDebugAllLogMessagesForCurrentProcess];
    }
}

@end
