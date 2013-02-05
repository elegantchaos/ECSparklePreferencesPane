// --------------------------------------------------------------------------
//  Copyright 2013 Sam Deane, Elegant Chaos. All rights reserved.
//  This source code is distributed under the terms of Elegant Chaos's
//  liberal license: http://www.elegantchaos.com/license/liberal
// --------------------------------------------------------------------------

#import "ECSparklePreferenceController.h"

@implementation ECSparklePreferenceController

- (id) init
{
	if ((self = [super init]) != nil)
	{
		NSString* name = [[[NSBundle mainBundle] infoDictionary] objectForKey: @"CFBundleName"];
		self.introText = [NSString stringWithFormat: @"%@ can automatically check for updates of itself. Checking occurs only when a network connection is active.", name];
		self.anonymousText = [NSString stringWithFormat: @"To help us improve support for all platforms, %@ can include anonymous information about your current configuration every time it checks for an update.", name];
	}
	
	return self;
}

- (void) dealloc
{
	[_introText release];
	[_anonymousText release];
	
	[super dealloc];
}

@end
