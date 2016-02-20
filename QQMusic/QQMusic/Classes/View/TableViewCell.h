//
//  TableViewCell.h
//  QQMusic
//
//  Created by    🐯 on 16/2/15.
//  Copyright © 2016年 张炫赫. All rights reserved.
//

#import <UIKit/UIKit.h>
@class lrcLabel;
@interface TableViewCell : UITableViewCell

@property(nonatomic,strong)lrcLabel *lrcLabeww;

+ (instancetype)lrcCellWithTableView:(UITableView *)tableView;
@end
