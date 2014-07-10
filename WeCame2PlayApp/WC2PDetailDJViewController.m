//
//  WC2PDetailDJViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/10/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PDetailDJViewController.h"
#import "WC2PDJ.h"
#import "WC2PDJsViewController.h"
#import "WC2PDJShareTableViewController.h"

@interface WC2PDetailDJViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *djImage;
@property (weak, nonatomic) IBOutlet UITextView *bioText;

@property (weak, nonatomic) IBOutlet UILabel *djViewLabel;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *djSocialListButton;

@end

@implementation WC2PDetailDJViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
       // [self setTitle:@"WC2PDetailDJViewController"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib
    
}

- (IBAction)goToDJShareListView:(id)sender
{
    
    
    WC2PDJShareTableViewController *shareView = [[WC2PDJShareTableViewController alloc]init];
    
    shareView.dj = self.dj;
    
    [self.navigationController pushViewController:shareView animated:YES];
}


- (IBAction)goBackToDJView:(id)sender
{
    
    [self.navigationController popToRootViewControllerAnimated:YES];

}

// User to setup subviews to show properties from WC2PDJ
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.view endEditing:YES];
    
    WC2PDJ *dj = self.dj;
    
    //UIBezierPath *imageRect = [UIBezierPath bezierPathWithRect:self.djImage.bounds];
    //self.bioText.textContainer.exclusionPaths = @[imageRect];
    
    
    self.djImage.image = dj.djImage;
    self.bioText.text = dj.djBio;
    self.djViewLabel.text = dj.djName;
    
    //self.backButton.titleLabel.text = @"DJs";
}

-(void)setDj:(WC2PDJ *)dj
{
    _dj = dj;
    self.navigationItem.title = _dj.djName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
