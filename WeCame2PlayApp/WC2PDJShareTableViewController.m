//
//  WC2PDJShareTableViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/16/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PDJShareTableViewController.h"
#import "WC2PDJ.h"
#import "WC2PDetailDJViewController.h"
#import "WC2PDJSocialMediaViewController.h"

@interface WC2PDJShareTableViewController ()
@property (weak, nonatomic) IBOutlet UILabel *shareViewLabel;
@property (weak, nonatomic) IBOutlet UIButton *shareViewBackButton;
@property (strong, nonatomic) IBOutlet UIView *headerView;


@end

@implementation WC2PDJShareTableViewController

-(instancetype) init
{
    self = [super initWithStyle:UITableViewStylePlain];
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
   
    return [self init];
}


-(UIView *)headerView
{
    if (!_headerView) {
        [[NSBundle mainBundle] loadNibNamed:@"ShareHeaderView"
                                      owner:self
                                    options:nil];
    }
    
    return _headerView;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
     //self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    

    
    UIView *header = self.headerView;
    [self.tableView setTableHeaderView:header];
}

- (IBAction)moveBackToDJView:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)viewWillAppear:(BOOL)animated
{
    WC2PDJ *dj = self.dj;
    
    self.shareViewLabel.text = dj.djName;
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.dj.djURLs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    // Configure the cell...
    
    if (indexPath.row == 0){
        cell.textLabel.text = @"FaceBook";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"Intagram";
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @"Twitter";
    } else if (indexPath.row == 3) {
        cell.textLabel.text = @"Website";
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WC2PDJSocialMediaViewController *socialViewController = [[WC2PDJSocialMediaViewController alloc]init];
    
    socialViewController.dj = self.dj;
    socialViewController.urlIndex = indexPath.row;
    
    
    [self.navigationController pushViewController:socialViewController animated:YES];
}




/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
