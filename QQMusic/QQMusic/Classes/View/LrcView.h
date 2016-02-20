//
//  LrcView.h
//  QQMusic
//
//  Created by    🐯 on 16/2/15.
//  Copyright © 2016年 张炫赫. All rights reserved.
//

#import <UIKit/UIKit.h>
@class lrcLabel;
@interface LrcView : UIScrollView

@property (nonatomic, copy) NSString *lrcName;

/** 当前播放的时间 */
@property (nonatomic, assign) NSTimeInterval currentTime;

/** 外面歌词的Label */
@property (nonatomic, weak) lrcLabel *lrcLabel;

/** 当前歌曲的总时长 */
@property (nonatomic, assign) NSTimeInterval duration;

@end
