//
//  FunArtView.m
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/19/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import "FunArtView.h"

@implementation FunArtView

-(void)drawRect:(NSRect)dirtyRect{
    
    
    [super drawRect:dirtyRect];
    
    NSColor *color = [NSColor grayColor];
    
    [color set];
    [NSBezierPath fillRect:self.bounds];
    
    
    NSRect bounds = [self bounds];
    NSGradient* aGradient = [[NSGradient alloc]
                              initWithStartingColor:[NSColor orangeColor]
                              endingColor:[NSColor yellowColor]];
    
    NSPoint centerPoint = NSMakePoint(NSMidX(bounds), NSMidY(bounds));
    NSPoint otherPoint = NSMakePoint(centerPoint.x + 60.0, centerPoint.y + 60.0);
    CGFloat firstRadius = MIN( ((bounds.size.width/2.0) - 2.0),
                              ((bounds.size.height/2.0) -2.0) );
       [aGradient drawFromCenter:centerPoint radius:firstRadius
                     toCenter:otherPoint radius:5.0
                      options:0];
    

}

@end
