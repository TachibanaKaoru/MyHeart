//
//  Heart2.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart2.h"

static Heart2* sharedInstance;

@implementation Heart2

+ (Heart2*)sharedInstance{
	
	@synchronized(self){

		if (!sharedInstance){
			sharedInstance = [[Heart2 alloc] init];
		}
		
	}
	
	return sharedInstance;
	
}

@end
