//
//  BlueView.h
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/12/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import <Cocoa/Cocoa.h>
//#import "ViewController.h"
#import "RandomPercentGenerator.h"

IB_DESIGNABLE

@interface BlueView : NSView

-(void)reDraw:(NSMutableArray *)array;
@property (nonatomic,readwrite) NSArray *numberArray;

@end
