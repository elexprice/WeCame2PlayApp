//
//  WC2PURLs.h
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/18/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WC2PURLs : NSObject

@property (nonatomic, strong) NSURL *twitterURL;
@property (nonatomic, strong) NSURL *facebookURL;
@property (nonatomic, strong) NSURL *instagramURL;
@property (nonatomic, strong) NSURL *emailURL;
@property (nonatomic, strong) NSURL *websiteURL;

@property (nonatomic, strong) NSArray *urls;

-(instancetype)initWithTwiterURL: (NSURL *)twitter
                     facebookURL: (NSURL *)facebook
                    instagramURL: (NSURL *)instagram
                        emailURL: (NSURL *)email
                      websiteURL: (NSURL *)website;
-(instancetype)initURLS: (NSArray *)urls;


+(NSArray *)getURLs;

@end
