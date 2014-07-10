//
//  WC2PDJSocialMediaViewController.h
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/17/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WC2PDJ;
@class WC2PURLs;

@interface WC2PDJSocialMediaViewController : UIViewController
@property (strong, nonatomic) WC2PDJ *dj;
@property (weak, nonatomic) NSURL *socialViewURL;
@property (nonatomic) NSInteger urlIndex;
@property (weak, nonatomic) IBOutlet UIWebView *djSocialMediaWebView;

@property (nonatomic) int viewControllerID;

@property (strong, nonatomic) WC2PURLs *urls;


@end
