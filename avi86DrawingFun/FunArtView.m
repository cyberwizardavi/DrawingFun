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
    
    NSColor *color = [NSColor brownColor];
    
    [color set];
    [NSBezierPath fillRect:self.bounds];
}

@end
