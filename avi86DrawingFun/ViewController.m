//
//  ViewController.m
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/12/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import "ViewController.h"
#import "BlueView.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.randomNumberArray = [[NSMutableArray alloc] initWithObjects:@"50", @"100",@"-40",@"130",@"-70",@"60",@"90", nil];
    
    self.blueView.numberArray = self.randomNumberArray;
    
}


- (IBAction)buttonClicked:(id)sender {
    
        [self.view addSubview:self.blueView];
        [self.blueView setNeedsDisplay:YES];
    
    [self.blueView reDraw:self.blueView.numberArray];
     NSLog(@"array: %@", self.randomNumberArray);
}


@end
