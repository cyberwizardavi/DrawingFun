//
//  BlueView.m
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/12/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import "BlueView.h"
#import "ViewController.h"


@implementation BlueView



-(void)drawRect:(NSRect)dirtyRect{
    
    [super drawRect:dirtyRect];
    
    NSColor *color = [NSColor yellowColor];
    
    [color set];
    
    [NSBezierPath fillRect:self.bounds];
    
    [[NSColor blueColor] setStroke];
    
    NSLog(@"array from drawrect: %@", self.numberArray);
    
    NSUInteger count = [self.numberArray count];
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0,0)];
    
   // NSLog(@"array: %@", self.numberArray);
    for(NSUInteger index = 1; index <count; index++){
        
        CGFloat p0 = [[self.numberArray objectAtIndex:(index-1)]floatValue];
        CGFloat p1 = [[self.numberArray objectAtIndex:index]floatValue];
        
                       
        [path relativeLineToPoint:CGPointMake(p0, p1)];
        
    };
    
    
     [path lineToPoint:CGPointMake(self.frame.size.width,0)];
     [path closePath];
    
    
    //[NSBezierPath bezierPathWithOvalInRect:self.bounds];
    NSColor *pathColor = [NSColor redColor];
    [pathColor set];
    [path fill];
    [path stroke];
}

-(void)reDraw:(NSMutableArray *)array{
    
    
    NSLog(@"array from blue: %@", array);
    
    NSUInteger count = [array count];
    for (NSUInteger i = 0; i < count; ++i) {
        
        int nElements = count - i;
        int n = (arc4random() % nElements) + i;
        [array exchangeObjectAtIndex:i withObjectAtIndex:n];
    }
    
    self.numberArray = array;
     NSLog(@"array from blue after random: %@", array);
}

@end
