//
//  Heart6.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart6.h"

static Heart6* sharedInstance;

@implementation Heart6

+ (Heart6*)sharedInstance{
	
	@synchronized(self){
		
		if (!sharedInstance){
			[[self alloc] init];
		}
		
	}
	
	return sharedInstance;
	
}

+ (id)allocWithZone:(NSZone *)zone {
	
	@synchronized(self) {
			
		if (sharedInstance == nil) {
				
			sharedInstance = [super allocWithZone:zone];
			return sharedInstance; // 初回のallocationで代入して返す
			
		}
		
	}
		
	return nil; // ２回目以降はnilを返す
	
}

- (id)copyWithZone:(NSZone *)zone{
	
    return self;
}
	
@end
