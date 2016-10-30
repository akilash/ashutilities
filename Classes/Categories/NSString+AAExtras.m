//
//  NSString+AAExtras.m
//  Reddera
//
//  Created by Ash, Akil on 10/20/16.
//  Copyright © 2016 Reddera Inc. All rights reserved.
//

#import "NSString+AAExtras.h"

@implementation NSString (AAExtras)

- (NSString *)trimWhitespace {
	
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

@end
