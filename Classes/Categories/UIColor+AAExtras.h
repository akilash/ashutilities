//
//  UIColor+AAExtras.h
//  AshUtilities
//
//  Created by Akil Ash on 2/1/15.
//  Copyright (c) 2015 Akil Ash. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGB(a, b, c) RGBA(a, b, c, 1.0f)

#define RGBA(a, b, c, d) [UIColor colorWithRed:(a / 255.0f) green:(b / 255.0f) blue:(c / 255.0f) alpha:d]

@interface UIColor (AAExtras)

@end
