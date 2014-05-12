//
//  PostsTableViewController.m
//  homework2
//
//  Created by Evan Baumgardner on 5/11/14.
//  Copyright (c) 2014 Evan Baumgardner. All rights reserved.
//

#import "PostsViewController.h"
#import "PostTableViewCell.h"
#import "Post.h"

@interface PostsViewController () <UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UITableView *tableView;
@property NSArray *posts;

@end

@implementation PostsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    NSMutableArray *theListOfPosts = [[NSMutableArray alloc] init];
    
    Post *theFirstNewPost = [[Post alloc] init];
    theFirstNewPost.title = @"First post";
    theFirstNewPost.userName = @"first user";
    theFirstNewPost.content = @"first content";
    theFirstNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theFirstNewPost];
    
    theFirstNewPost = nil;
    
    Post *theSecondNewPost = [[Post alloc] init];
    theSecondNewPost.title = @"Second post";
    theSecondNewPost.userName = @"Second user";
    theSecondNewPost.content = @"Second content";
    theSecondNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theSecondNewPost];
    
    theSecondNewPost = nil;

    Post *theThirdNewPost = [[Post alloc] init];
    theThirdNewPost.title = @"Third post";
    theThirdNewPost.userName = @"Third user";
    theThirdNewPost.content = @"Third content";
    theThirdNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theThirdNewPost];
    
    theThirdNewPost = nil;

    Post *theFourthNewPost = [[Post alloc] init];
    theFourthNewPost.title = @"Fourth post";
    theFourthNewPost.userName = @"Fourth user";
    theFourthNewPost.content = @"Fourth content";
    theFourthNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theFourthNewPost];
    
    theFourthNewPost = nil;

    Post *theFifthNewPost = [[Post alloc] init];
    theFifthNewPost.title = @"Fifth post";
    theFifthNewPost.userName = @"Fifth user";
    theFifthNewPost.content = @"Fifth content";
    theFifthNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theFifthNewPost];
    
    theFifthNewPost = nil;
    
    Post *theSixthNewPost = [[Post alloc] init];
    theSixthNewPost.title = @"Sixth post";
    theSixthNewPost.userName = @"Sixth user";
    theSixthNewPost.content = @"Sixth content";
    theSixthNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theSixthNewPost];
    
    theSixthNewPost = nil;
    
    Post *theSeventhNewPost = [[Post alloc] init];
    theSeventhNewPost.title = @"Seventh post";
    theSeventhNewPost.userName = @"Seventh user";
    theSeventhNewPost.content = @"Seventh content";
    theSeventhNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theSeventhNewPost];
    
    theSeventhNewPost = nil;
    
    Post *theEighthNewPost = [[Post alloc] init];
    theEighthNewPost.title = @"Eighth post";
    theEighthNewPost.userName = @"Eighth user";
    theEighthNewPost.content = @"Eighth content";
    theEighthNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theEighthNewPost];
    
    theEighthNewPost = nil;
    
    Post *theNinthNewPost = [[Post alloc] init];
    theNinthNewPost.title = @"Ninth post";
    theNinthNewPost.userName = @"Ninth user";
    theNinthNewPost.content = @"Ninth content";
    theNinthNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theNinthNewPost];
    
    theNinthNewPost = nil;
    
    Post *theTenthNewPost = [[Post alloc] init];
    theTenthNewPost.title = @"Tenth post";
    theTenthNewPost.userName = @"Tenth user";
    theTenthNewPost.content = @"Tenth content";
    theTenthNewPost.date = [NSDate date];
    
    [theListOfPosts addObject:theTenthNewPost];
    
    theTenthNewPost = nil;
    
    self.posts = theListOfPosts;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.posts count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"postCell" forIndexPath:indexPath];
    
    cell.myPost = self.posts[indexPath.row];
    
    [cell refreshDisplay];
    
    // Configure the cell...
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier: @"DetailSegue" sender: self];
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
