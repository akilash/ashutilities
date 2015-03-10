//
//  AABaseTableViewCell.h
//  AshUtilities
//
//  Created by Akil Ash on 3/10/15.
//  Copyright (c) 2015 Akil Ash. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AABaseTableViewCell : UITableViewCell

- (instancetype)init __attribute((unavailable("not available")));

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier __attribute((unavailable("not available")));

+ (UINib *)nib;

+ (NSString *)nibName;

+ (NSString *)cellIdentifier;

+ (UITableViewCellStyle)cellStyle;

+ (CGFloat)cellHeight;

+ (instancetype)cellForTableView:(UITableView *)tableView reuseIdentifier:(NSString *)reuseIdentifier fromNib:(UINib *)nib;

+ (instancetype)cellForTableView:(UITableView *)tableView reuseIdentifier:(NSString *)reuseID;

+ (instancetype)cellForTableView:(UITableView *)tableView fromNib:(UINib *)nib;

+ (instancetype)cellForTableView:(UITableView *)tableView;

@end
