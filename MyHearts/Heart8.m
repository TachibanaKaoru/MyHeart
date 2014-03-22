//
//  Heart8.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart8.h"

static Heart8* sharedInstance;

@implementation Heart8

+ (Heart8*)sharedInstance{
	
	static dispatch_once_t once;
	dispatch_once( &once, ^{
		[[self alloc] init];
	});

	return sharedInstance;
	
}

+ (id)allocWithZone:(NSZone *)zone {
	
	__block id ret = nil;
	
	static dispatch_once_t once;
	dispatch_once( &once, ^{
		sharedInstance = [super allocWithZone:zone];
		ret = sharedInstance;
	});
	
	return  ret;
	
}

- (id)copyWithZone:(NSZone *)zone{
	
    return self;
}

@end
