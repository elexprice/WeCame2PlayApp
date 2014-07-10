//
//  WC2PDJsViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/7/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PDJsViewController.h"
#import "WC2PDJ.h"
#import "WC2PDetailDJViewController.h"


@interface WC2PDJsViewController ()

@property (weak, nonatomic) IBOutlet UIButton *djFreezeButton;
@property (weak, nonatomic) IBOutlet UIButton *djIEButton;
@property (weak, nonatomic) IBOutlet UIButton *djUPDButton;

@end

@implementation WC2PDJsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
        UINavigationItem *navItem = self.navigationItem;
        navItem.title = @"DJs";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    
    
}
- (IBAction)djButtonPressed:(id)sender
{
    
    WC2PDetailDJViewController *detailDJViewController = [[WC2PDetailDJViewController alloc] init];
    
    
    NSArray *djs = [WC2PDJ djs];
    
    
    
    if (sender == self.djFreezeButton) {
        detailDJViewController.dj = djs[0];
    } else if (sender == self.djIEButton){
        detailDJViewController.dj = djs[1];
    } else if (sender == self.djUPDButton) {
        detailDJViewController.dj = djs[2];
    }
    
    [self.navigationController pushViewController:detailDJViewController animated:YES];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
