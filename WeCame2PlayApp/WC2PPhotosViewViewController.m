//
//  WC2PPhotosViewViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 5/7/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PPhotosViewViewController.h"

@interface WC2PPhotosViewViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *photosWebView;

@end

@implementation WC2PPhotosViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    NSURL *url = [NSURL URLWithString:@"https://plus.google.com/photos/112779790752903970107/albums/5950950176974393121?banner=pwa"];
    
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    
    [self.photosWebView loadRequest:urlRequest];
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
