//
//  ShapesView.m
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/19/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import "ShapesView.h"

@implementation ShapesView
-(void)drawRect:(NSRect)dirtyRect{
    
    
    [super drawRect:dirtyRect];
    
    NSColor *color = [NSColor greenColor];
    
    [color set];
    [NSBezierPath fillRect:self.bounds];
    
    [[NSColor grayColor] setStroke];
    [[NSColor yellowColor] setFill];
    
    //Square using NSrect
    NSPoint origin = { 20,20 };
    
    NSRect rect;
    rect.origin = origin;
    rect.size.width  = 100;
    rect.size.height = 100;
    
    NSBezierPath * path = [NSBezierPath bezierPathWithRect:rect];
    
    [path setLineWidth:2];
    [path stroke];
    [path fill];
    
    
    
    //Triangle
    [path moveToPoint:NSMakePoint(140, 20)];
    [path relativeLineToPoint:NSMakePoint(70, 120)];
    [path relativeLineToPoint:NSMakePoint(70, -120)];
    [path closePath];
    [path stroke];
    [path fill];
    
    //Circle
    NSRect circlerect = NSMakeRect(280, 20, 130, 130);
    [path appendBezierPathWithOvalInRect: circlerect];
    [path stroke];
    [path fill];

    
}

@end
