//
//  Heart4.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart4.h"

static Heart4* sharedInstance;

@implementation Heart4

+ (Heart4*)sharedInstance{

	return sharedInstance;
	
}

+ (void)initialize{
	
	if (!sharedInstance) {
        sharedInstance = [[Heart4 alloc] init];
    }
	
}

@end
