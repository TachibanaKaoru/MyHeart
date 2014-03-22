//
//  Heart1.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart1.h"

static Heart1* sharedInstance;

@implementation Heart1

+ (Heart1*)sharedInstance{
	
	if (!sharedInstance){
		sharedInstance = [[Heart1 alloc] init];
	}
	
	return sharedInstance;
	
}

@end
