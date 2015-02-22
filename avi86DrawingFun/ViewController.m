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

    self.randomNumberArray = [[NSMutableArray alloc] initWithObjects:@"50", @"100",@"130",@"60",@"90", nil];
    
}
- (IBAction)buttonClicked:(id)sender {
    
    NSUInteger count = [self.randomNumberArray count];
    for (NSUInteger i = 0; i < count; ++i) {
        // Select a random element between i and end of array to swap with.
        int nElements = count - i;
        int n = (arc4random() % nElements) + i;
        [self.randomNumberArray exchangeObjectAtIndex:i withObjectAtIndex:n];
        
       
        
    }
    
    [self.blueView reDraw:self.randomNumberArray];
     NSLog(@"array: %@", self.randomNumberArray);
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
