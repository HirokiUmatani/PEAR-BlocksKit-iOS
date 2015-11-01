//
//  PEARBlocksKit.m
//  BlocksKit-iOS
//
//  Created by hirokiumatani on 2015/11/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "PEARBlocksKit.h"

@implementation PEARBlocksKit
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"

+ (void)blocksWithClassObject:(id)object
                     selector:(SEL)selector
                  returnValue:(BOOL)returnValue
                      handler:(blocksHandler)handler
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0),^
    {
        dispatch_async(dispatch_get_main_queue(),^
        {
            
            id result = nil;
            if (returnValue == YES)
            {
                result = [object performSelector:selector withObject:nil];
            }
            else
            {
                [object performSelector:selector withObject:nil];
            }
            handler(result);
        });
    });
}
@end
