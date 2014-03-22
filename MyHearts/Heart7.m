//
//  Heart7.m
//  MyHearts
//
//  Created by Tachibana Kaoru on 22/03/2014.
//  Copyright (c) 2014 Toyship.org. All rights reserved.
//

#import "Heart7.h"

static Heart7* sharedInstance;

@implementation Heart7

+ (Heart7*)sharedInstance{
	
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

- (id)retain{
	
    return self;
}

- (unsigned)retainCount{
	
    return UINT_MAX;  // 解放できないオブジェクトであることを示す
}

- (void)release{
	
    // 何もしない
}

- (id)autorelease{
	
    return self;
}
@end
