//
//  TableViewCell.m
//  QQMusic
//
//  Created by    🐯 on 16/2/15.
//  Copyright © 2016年 张炫赫. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"
#import "lrcLabel.h"
@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        lrcLabel *lrcLabe = [[lrcLabel alloc] init];
        lrcLabe.textColor = [UIColor grayColor];
        lrcLabe.font = [UIFont systemFontOfSize:14.0];
        lrcLabe.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:lrcLabe];
        self.lrcLabeww=lrcLabe;
        lrcLabe.translatesAutoresizingMaskIntoConstraints = NO;
        [lrcLabe mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self.contentView);
        }];
    }
    return self;
}

+ (instancetype)lrcCellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"LrcCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.backgroundColor = [UIColor clearColor];
        //不允许被点击
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    return cell;
}

@end
