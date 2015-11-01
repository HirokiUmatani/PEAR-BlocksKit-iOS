//
//  ViewController.m
//  BlocksKit-iOS
//
//  Created by hirokiumatani on 2015/11/01.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "ViewController.h"
#import "PEARBlocksKit.h"
#import "SampleClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // TEST: Sample1
    NSLog(@"Self class sample1 method start");
    [PEARBlocksKit blocksWithClassObject:self
                                selector:@selector(sample1)
                             returnValue:NO
                                 handler:^(id result)
    {
        NSLog(@"Self class sample1 method call back return value : %@",result);
    }];
    
    // TEST: Sample2
    NSLog(@"Sample class sample2 method start");
    [PEARBlocksKit blocksWithClassObject:[SampleClass new]
                                selector:@selector(sample2)
                             returnValue:YES
                                 handler:^(id result)
     {
         NSLog(@"Sample class sample2 method call back value : %@",result);
     }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)sample1
{
    NSLog(@"Self class sample1 method doing !!");
}
@end
