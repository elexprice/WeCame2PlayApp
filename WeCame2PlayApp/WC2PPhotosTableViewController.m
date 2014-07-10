//
//  WC2PPhotosTableViewController.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/14/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PPhotosTableViewController.h"
#import "WC2PPhotosViewViewController.h"

@interface WC2PPhotosTableViewController ()

@end

@implementation WC2PPhotosTableViewController

-(instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    
    return [self init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    // Configure the cell...
    if (indexPath.row == 0){
        cell.textLabel.text = @"Mosaic Fridays Houstons";
    } else if (indexPath.row == 1) {
        cell.textLabel.text = @"The Definition 2013";
    } else if (indexPath.row == 2) {
        cell.textLabel.text = @"The BluePrint 2013";
    } else if (indexPath.row == 3) {
        cell.textLabel.text = @"JSU Homecoming TailGate 2013";
    } else if (indexPath.row == 4) {
        cell.textLabel.text = @"Greek Reunion Party 2013";
    } else if (indexPath.row == 5) {
        cell.textLabel.text = @"JSU Homecomming Day Party 2013";
    } else if (indexPath.row == 6) {
        cell.textLabel.text = @"The Get 2Gether 2013";
    }

    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WC2PPhotosViewViewController *pVC = [[WC2PPhotosViewViewController alloc]init];
    
    [self.navigationController pushViewController:pVC animated:YES];
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
