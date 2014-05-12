//
//  PostTableViewCell.m
//  homework2
//
//  Created by Evan Baumgardner on 5/11/14.
//  Copyright (c) 2014 Evan Baumgardner. All rights reserved.
//

#import "PostTableViewCell.h"

@implementation PostTableViewCell




- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) refreshDisplay
{
    self.usernameLabel.text = self.myPost.userName;
    self.date.text = [self.myPost.date description];
    self.title.text = self.myPost.title;
    self.content.text = self.myPost.content;
    

}

- (IBAction)unwindToPostsViewController:(UIStoryboardSegue *)unwindSegue
{
}


@end

