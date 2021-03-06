//
//  UIImage+AAExtras.h
//  Reddera
//
//  Created by Ash, Akil on 10/25/15.
//  Copyright © 2015 Reddera Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (AAExtras)

+ (UIImage *)maskImage:(UIImage *)image withMask:(UIImage *)maskImage;

+ (UIImage *)imageFromColor:(UIColor *)color;

@end
