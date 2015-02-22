//
//  BlueView.h
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/12/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import <Cocoa/Cocoa.h>
//#import "ViewController.h"

@interface BlueView : NSView

-(void)reDraw:(NSMutableArray *)array;
@property (nonatomic,readwrite) NSMutableArray *numberArray;

@end
