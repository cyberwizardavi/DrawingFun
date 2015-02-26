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
    NSColor *blackColor = [NSColor colorWithPatternImage:[NSImage imageNamed:@"math.jpg"]];
   
    [ blackColor set];
    [NSBezierPath fillRect:self.bounds];
  
    
    int width = dirtyRect.size.width;
    int height = dirtyRect.size.height;
    
    int numberOfSineCurves = 23;
    float cWidth = 20.0;
    float cHeight = height/3.5;
    for (int i=0; i<numberOfSineCurves; i++)
    {
        NSBezierPath *sinePath = [NSBezierPath bezierPath];
        [[NSColor redColor] set];
        [sinePath setLineWidth:2.0];
        [sinePath moveToPoint:NSMakePoint(i*5+10, height/2)];
        for (int j=0; j<width;j++)
        {
            [sinePath lineToPoint:CGPointMake((i*6+15)+j*cWidth+10, height/2 - (sin(2*3.14*j/20)*cHeight))];
        }
        [sinePath stroke];
    }
    

}

@end
