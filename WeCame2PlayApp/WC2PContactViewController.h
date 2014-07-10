//
//  WC2PContactViewController.h
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/14/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface WC2PContactViewController : UIViewController <MFMailComposeViewControllerDelegate> // Add the delegate
{
    MFMailComposeViewController *mailComposer;
}

@end
