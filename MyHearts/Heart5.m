//
//  Heart5.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart5.h"

static Heart5* sharedInstance;

@implementation Heart5

+ (Heart5*)sharedInstance{
	
	@synchronized(self){
		
		if (!sharedInstance){
			sharedInstance = [[self alloc] init];
		}
		
	}
	
	return sharedInstance;
	
}

@end
