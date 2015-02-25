//
//  BlueView.m
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/12/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import "BlueView.h"
#import "ViewController.h"
#import "RandomPercentGenerator.h"


@implementation BlueView



-(void)drawRect:(NSRect)dirtyRect{
    
    [super drawRect:dirtyRect];
    
     NSColor *backgroundColor = [NSColor colorWithPatternImage:[NSImage imageNamed:@"colorgridrepeat.jpg"]];
    
    [backgroundColor set];
    
    [NSBezierPath fillRect:self.bounds];
    
    [[NSColor blueColor] setStroke];
    
    self.numberArray = [RandomPercentGenerator arrayOfPercents:10];
    
    NSLog(@"array from drawrect: %@", self.numberArray);
    
    NSUInteger count = [self.numberArray count];
    
    NSBezierPath *path = [NSBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0,0)];
    
    int xCord = 20;
    
   // NSLog(@"array: %@", self.numberArray);
    for(NSUInteger index = 0; index <count; index++){
        
        xCord = xCord+(self.frame.size.width/14);
        
        CGFloat p0 = [[self.numberArray objectAtIndex:(index)]floatValue]*(self.frame.size.height/1.2);
      
         NSLog(@"CG Points P0: %f", p0);
         NSLog(@"x cordinate: %d", xCord);
       // NSLog(@"y cordinate: %f", self.frame.size.width);
        
        [path lineToPoint:CGPointMake([self bounds].origin.x + xCord , p0)];
        
    };
    
    
     [path lineToPoint:CGPointMake(self.frame.size.width,0)];
     [path closePath];
    
    
    //[NSBezierPath bezierPathWithOvalInRect:self.bounds];
   // NSColor *pathColor = [NSColor redColor];
    NSColor *imageColor = [NSColor colorWithPatternImage:[NSImage imageNamed:@"image.jpg"]];
    [imageColor set];
    [path fill];
    [path stroke];
}


//Not in use.
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
