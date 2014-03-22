//
//  Heart3.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart3.h"

static Heart3* sharedInstance;

@implementation Heart3

+ (Heart3*)sharedInstance{

	return sharedInstance;
	
}

+ (void)load{
	
	if (!sharedInstance) {
        sharedInstance = [[Heart3 alloc] init];
    }

}

@end
