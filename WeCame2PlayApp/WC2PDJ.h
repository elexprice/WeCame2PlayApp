//
//  WC2PDJ.h
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/8/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WC2PDJ : NSObject

// Properties of a DJ
@property (strong, nonatomic) NSString *djName;
@property (strong, nonatomic) UIImage *djButtonImage;
@property (strong, nonatomic) UIImage *djImage;
@property (strong, nonatomic) NSString *djBio;
@property (strong, nonatomic) NSURL *djFacebookURL;
@property (strong, nonatomic) NSURL *djTwitterURL;
@property (strong, nonatomic) NSURL *djInsagramURL;
@property (strong, nonatomic) NSArray *djURLs;
@property (strong, nonatomic) NSURL *djWebsite;

// Array of 3 days: DJ Freeze, DJ IE, & DJ Unpredictable
@property (strong, nonatomic) NSArray *djs;


// designated initializer
-(instancetype)initWithdjName:(NSString *)name
                djButtonImage:(UIImage *)buttonImage
                      djImage:(UIImage *)image
                          bio:(NSString *)bio
                djFaceBookURL:(NSURL *)faceBookURL
               djInstagramURL: (NSURL *)instagramURL
                 djTwitterURL:(NSURL *)twitterURL
                       djURLs:(NSArray *)URLs
                    djWebsite:(NSURL *)website;


// Class Method to get an Array of 3 WC2P DJs
+(NSArray *)djs;

@end
