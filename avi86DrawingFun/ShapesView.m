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
    
   // NSColor *color = [NSColor gridColor];
    
   // [color set];
    NSColor *imageColor = [NSColor colorWithPatternImage:[NSImage imageNamed:@"pattern.gif"]];
    [imageColor set];
    [NSBezierPath fillRect:self.bounds];
    
    [[NSColor blackColor] setStroke];
    [[NSColor redColor] setFill];
   
    
    //Square using NSrect
    NSPoint origin = { 20,20 };
    
    NSRect rect;
    rect.origin = origin;
    rect.size.width  = self.frame.size.width/4;
    rect.size.height = self.frame.size.width/4;
    
    NSBezierPath * path = [NSBezierPath bezierPathWithRect:rect];
    
    [path setLineWidth:5];
    [path stroke];
    [path fill];
    
    
    
    //Triangle
    [path moveToPoint:NSMakePoint(rect.size.width+35, 20)];
    [path relativeLineToPoint:NSMakePoint(self.frame.size.width/5, self.frame.size.width/5)];
    [path relativeLineToPoint:NSMakePoint(self.frame.size.width/5, -self.frame.size.width/5)];
    [path closePath];
    [path stroke];
    [path fill];
    
    //Circle
    NSRect circlerect = NSMakeRect(((rect.size.width+30)+(self.frame.size.width/3)+10), 20, self.frame.size.width/3.2, self.frame.size.width/3.2);
    [path appendBezierPathWithOvalInRect: circlerect];
    [path stroke];
    [path fill];

    
}

@end
