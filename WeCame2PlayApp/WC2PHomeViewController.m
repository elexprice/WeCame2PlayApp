//
//  WC2PHomeViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/7/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PHomeViewController.h"
#import "WC2PDJSocialMediaViewController.h"
#import "WC2PURLs.h"
#import "WC2PContactViewController.h"

@interface WC2PHomeViewController ()

@property (weak, nonatomic) IBOutlet UIButton *twitterButton;
@property (weak, nonatomic) IBOutlet UIButton *facebookButton;
@property (weak, nonatomic) IBOutlet UIButton *instagramButton;
@property (weak, nonatomic) IBOutlet UIButton *emailButton;
@property (weak, nonatomic) IBOutlet UIButton *websiteButton;

@end

@implementation WC2PHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.tabBarItem.title = @"Home";

    }
    return self;
}

- (IBAction)goToSocialView:(id)sender
{
    WC2PDJSocialMediaViewController *socialViewController = [[WC2PDJSocialMediaViewController alloc]init];
    WC2PContactViewController *contactViewContr = [[WC2PContactViewController alloc] init];
    _viewControlerID = 1;
    
    NSArray *urls = [WC2PURLs getURLs];
    
    if (sender == self.twitterButton){
        socialViewController.socialViewURL = urls[0];
        socialViewController.viewControllerID = _viewControlerID;
        socialViewController.urlIndex = 2;
        [self.navigationController pushViewController:socialViewController animated:YES];
    } else if(sender == self.facebookButton){
        socialViewController.socialViewURL = urls[1];
        socialViewController.viewControllerID = _viewControlerID;
        socialViewController.urlIndex = 0;
        [self.navigationController pushViewController:socialViewController animated:YES];
    } else if(sender == self.instagramButton){
        socialViewController.socialViewURL = urls[2];
        socialViewController.viewControllerID = _viewControlerID;
        socialViewController.urlIndex = 1;
        [self.navigationController pushViewController:socialViewController animated:YES];
    } else if(sender == self.emailButton){
        socialViewController.socialViewURL = urls[3];
        socialViewController.viewControllerID = _viewControlerID;
        [self.navigationController pushViewController:contactViewContr animated:YES];
    } else if(sender == self.websiteButton){
        socialViewController.socialViewURL = urls[4];
        socialViewController.viewControllerID = _viewControlerID;
        socialViewController.urlIndex = 3;
        [self.navigationController pushViewController:socialViewController animated:YES];
    }
    
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

@end
