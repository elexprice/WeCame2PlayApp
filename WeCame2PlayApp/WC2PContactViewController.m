//
//  WC2PContactViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/14/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PContactViewController.h"
#import <MessageUI/MessageUI.h>

@interface WC2PContactViewController ()



@end

@implementation WC2PContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    
    NSArray *toRecipents = [NSArray arrayWithObject:@"info@wecame2play.com"];
    
    [mailComposer setToRecipients:toRecipents];
    [mailComposer setSubject:@"Subject Here"];
    [mailComposer setMessageBody:@"\n\n This Message was sent from WeCame2Play.com iOS App" isHTML:NO];
    [self presentViewController:mailComposer animated:YES completion:nil];
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
    [self.navigationController popViewControllerAnimated:YES];
}



@end
