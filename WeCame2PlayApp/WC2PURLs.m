//
//  WC2PURLs.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/18/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PURLs.h"

@implementation WC2PURLs

-(instancetype)initWithTwiterURL: (NSURL *)twitter
                     facebookURL: (NSURL *)facebook
                    instagramURL: (NSURL *)instagram
                        emailURL: (NSURL *)email
                      websiteURL: (NSURL *)website

{
    self = [super init];
    
    if (self){
        _twitterURL = twitter;
        _facebookURL = facebook;
        _instagramURL = instagram;
        _emailURL = email;
        _websiteURL = website;
        
       
    }
    
    return self;
}

-(instancetype)initURLS:(NSArray *)urls
{
    self = [super init];
    
    if (self){
        _urls = urls;
    }
    return self;
}


+(NSArray *)getURLs
{
    NSURL *twitterURL = [NSURL URLWithString:@"https://twitter.com/wecametoplay"];
    NSURL *facebookURL = [NSURL URLWithString:@"https://www.facebook.com/wecame2play"];
    NSURL *instagramURL = [NSURL URLWithString:@"http://instagram.com/wecame2play"];
    NSURL *emailURL = [NSURL URLWithString:@"info@wecame2play.com"];
    NSURL *websiteURL = [NSURL URLWithString:@"http://www.wecame2play.com"];
    
    //WC2PURLs *urls = [[WC2PURLs alloc]initWithTwiterURL:twitterURL facebookURL:[NSURL URLWithString:@""] instagramURL:[NSURL URLWithString:@""] emailURL:[NSURL URLWithString:@""] websiteURL:[NSURL URLWithString:@""] ];
    
    NSArray *urlArray = [NSArray arrayWithObjects: twitterURL, facebookURL, instagramURL,emailURL, websiteURL, nil];
    
    
    return urlArray;
}
@end
