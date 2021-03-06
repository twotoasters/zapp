//
//  ZappBackgroundView.m
//  Zapp
//
//  Created by Jim Puls on 8/4/11.
//  Licensed to Square, Inc. under one or more contributor license agreements.
//  See the LICENSE file distributed with this work for the terms under
//  which Square, Inc. licenses this file to you.

#import "ZappBackgroundView.h"


@implementation ZappBackgroundView

@synthesize backgroundColor;
@synthesize backgroundGradient;
@synthesize borderColor;
@synthesize borderWidth;

- (void)drawRect:(NSRect)dirtyRect
{
    if (self.backgroundGradient) {
        [self.backgroundGradient drawInRect:self.bounds angle:270.0];
    } else if (self.backgroundColor) {
        [self.backgroundColor set];
        NSRectFill(dirtyRect);
    }
    
    if (self.borderWidth > 0.0 && self.borderColor) {
        NSRect borderRect = NSInsetRect(self.bounds, self.borderWidth / 2.0, self.borderWidth / 2.0);
        NSBezierPath *border = [NSBezierPath bezierPathWithRect:borderRect];
        border.lineWidth = self.borderWidth;
        [self.borderColor set];
        [border stroke];
    }
}

@end
