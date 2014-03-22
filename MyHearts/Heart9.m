//
//  Heart9.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart9.h"

@implementation Heart9

+ (Heart9*)sharedInstance{
	
	static Heart9* sharedInstance;
	static dispatch_once_t once;
	dispatch_once( &once, ^{
		sharedInstance = [[self alloc] init];
	});
	
	return sharedInstance;
}

@end
