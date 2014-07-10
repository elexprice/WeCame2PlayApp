//
//  WC2PDJSocialMediaViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/17/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PDJSocialMediaViewController.h"
#import "WC2PDJShareTableViewController.h"
#import "WC2PDJ.h"
#import "WC2PURLs.h"

@interface WC2PDJSocialMediaViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *djSocialMediaSegControl;

@property (weak, nonatomic) IBOutlet UIButton *djSocialMediaBackButton;


@end

@implementation WC2PDJSocialMediaViewController

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
    if (_djSocialMediaWebView.scrollView.dragging == YES){
        
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    WC2PDJ *dj = self.dj;

    
    if (self.viewControllerID == 1) {
        _socialViewURL = self.socialViewURL;
        //self.djSocialMediaSegControl.selectedSegmentIndex = [self.socialViewURL ];
    } else {
        _socialViewURL = [dj.djURLs objectAtIndex: _urlIndex];
        //self.djSocialMediaSegControl.selectedSegmentIndex = _urlIndex;
    }
    
    self.djSocialMediaSegControl.selectedSegmentIndex = _urlIndex;
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:_socialViewURL];
    
    
    [self.djSocialMediaWebView loadRequest:urlRequest];
    
    
}
- (IBAction)goBackToDJShareTable:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)goToViewOfSelectedSegment:(id)sender
{
    WC2PDJ *dj = self.dj;
    
    NSArray *urls = [WC2PURLs getURLs];
    
    switch (self.djSocialMediaSegControl.selectedSegmentIndex) {
        case 0:
            if (self.viewControllerID == 1){
                    _socialViewURL = urls[1];
                } else {
            _socialViewURL = dj.djURLs[0];
                }
            [self.djSocialMediaWebView loadRequest:[NSURLRequest requestWithURL:_socialViewURL]];
            break;
            
        case 1:
            if (self.viewControllerID == 1){
                _socialViewURL = urls[2];
            } else {
            _socialViewURL = dj.djURLs[1];
            }
            [self.djSocialMediaWebView loadRequest:[NSURLRequest requestWithURL:_socialViewURL]];
            break;
            
        case 2:
            if (self.viewControllerID == 1){
                _socialViewURL = urls[0];
            } else {
            _socialViewURL = dj.djURLs[0];
            }
            [self.djSocialMediaWebView loadRequest:[NSURLRequest requestWithURL:_socialViewURL]];
            break;
            
        case 3:
            if (self.viewControllerID == 1){
                _socialViewURL = urls[4];
            } else {
            _socialViewURL = dj.djURLs[3];
            }
            [self.djSocialMediaWebView loadRequest:[NSURLRequest requestWithURL:_socialViewURL]];
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
