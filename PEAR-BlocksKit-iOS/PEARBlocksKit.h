//
//  PEARBlocksKit.h
//  BlocksKit-iOS
//
//  Created by hirokiumatani on 2015/11/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^blocksHandler)(id result);

@interface PEARBlocksKit : NSObject
/**
 @bref blocksWithClassObject
 
 */
+ (void)blocksWithClassObject:(id)object
                     selector:(SEL)selector
                  returnValue:(BOOL)returnValue
                      handler:(blocksHandler)handler;
@end
