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

@end
