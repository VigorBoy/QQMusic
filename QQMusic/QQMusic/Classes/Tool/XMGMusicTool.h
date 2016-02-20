//
//  XMGMusicTool.h
//  QQMusic
//
//  Created by xiaomage on 15/8/15.
//  Copyright (c) 2015年 张炫赫. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XMGMusic;

@interface XMGMusicTool : NSObject

+ (NSArray *)musics;

+ (XMGMusic *)playingMusic;

+ (void)setPlayingMusic:(XMGMusic *)playingMusic;

+ (XMGMusic *)nextMusic;

+ (XMGMusic *)previousMusic;

@end
