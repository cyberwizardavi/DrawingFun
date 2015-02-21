//
//  BlueView.m
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/12/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import "BlueView.h"

@implementation BlueView

-(void)drawRect:(NSRect)dirtyRect{
    
    [super drawRect:dirtyRect];
    
    NSColor *color = [NSColor yellowColor];
    
    [color set];
    
    [NSBezierPath fillRect:self.bounds];
    
    [[NSColor blueColor] setStroke];
    
    
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(0,0)];
    [path relativeLineToPoint:CGPointMake(20,50)];
//    [path lineToPoint:CGPointMake(20,100)];
    
     [path relativeLineToPoint:CGPointMake(100,20)];
     [path relativeLineToPoint:CGPointMake(40,-20)];
     [path relativeLineToPoint:CGPointMake(256,-30)];
   
    // [path lineToPoint:CGPointZero];
     [path closePath];
    
    
    //[NSBezierPath bezierPathWithOvalInRect:self.bounds];
    NSColor *pathColor = [NSColor redColor];
    [pathColor set];
    [path fill];
    [path stroke];
}

-(void)reDraw:(NSMutableArray *)array{
    
    
}

@end
