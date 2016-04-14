//
//  UIImage+AAExtras.m
//  Reddera
//
//  Created by Ash, Akil on 10/25/15.
//  Copyright © 2015 Reddera Inc. All rights reserved.
//

#import "UIImage+AAExtras.h"

@implementation UIImage (AAExtras)

+ (UIImage *)maskImage:(UIImage *)image withMask:(UIImage *)maskImage {
	
	CGImageRef maskRef = maskImage.CGImage;
	
	CGImageRef mask = CGImageMaskCreate(CGImageGetWidth(maskRef),
										CGImageGetHeight(maskRef),
										CGImageGetBitsPerComponent(maskRef),
										CGImageGetBitsPerPixel(maskRef),
										CGImageGetBytesPerRow(maskRef),
										CGImageGetDataProvider(maskRef), NULL, false);
	
	CGImageRef masked = CGImageCreateWithMask([image CGImage], mask);
	UIImage *uiMaskedImg = [UIImage imageWithCGImage:masked];
	
	CGImageRelease(mask);
	CGImageRelease(masked);
	
	return uiMaskedImg;
}

+ (UIImage *)imageFromColor:(UIColor *)color {
	
	CGRect rect = CGRectMake(0.0f, 0.0f, 2.0f, 2.0f);
	UIGraphicsBeginImageContext(rect.size);
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetFillColorWithColor(context, [color CGColor]);
	CGContextFillRect(context, rect);
	UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return image;
}

@end
