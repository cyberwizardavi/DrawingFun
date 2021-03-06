//
//  ViewController.h
//  avi86DrawingFun
//
//  Created by Banerjee, Avishek on 2/12/15.
//  Copyright (c) 2015 Banerjee, Avishek. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BlueView.h"
#import "RandomPercentGenerator.h"

@interface ViewController : NSViewController

@property (weak) IBOutlet NSButton *randomButton;
@property (nonatomic,readwrite) NSArray *randomNumberArray;
@property (strong) IBOutlet BlueView *blueView;

@end

