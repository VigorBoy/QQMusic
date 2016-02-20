//
//  XMGMusicTool.m
//  QQMusic
//
//  Created by xiaomage on 15/8/15.
//  Copyright (c) 2015年 张炫赫 All rights reserved.
//

#import "XMGMusicTool.h"
#import "XMGMusic.h"
#import "MJExtension.h"

@implementation XMGMusicTool

static NSArray *_musics;
static XMGMusic *_playingMusic;

+ (void)initialize
{
    if (_musics == nil) {
        _musics = [XMGMusic objectArrayWithFilename:@"Musics.plist"];
    }
    
    if (_playingMusic == nil) {
        _playingMusic = _musics[1];
    }
}

+ (NSArray *)musics
{
    return _musics;
}

+ (XMGMusic *)playingMusic
{
    return _playingMusic;
}

+ (void)setPlayingMusic:(XMGMusic *)playingMusic
{
    _playingMusic = playingMusic;
}

+ (XMGMusic *)nextMusic
{
    // 1.拿到当前播放歌词下标值
    NSInteger currentIndex = [_musics indexOfObject:_playingMusic];
    
    // 2.取出下一首
    NSInteger nextIndex = ++currentIndex;
    if (nextIndex >= _musics.count) {
        nextIndex = 0;
    }
    XMGMusic *nextMusic = _musics[nextIndex];
    
    return nextMusic;
}

+ (XMGMusic *)previousMusic
{
    // 1.拿到当前播放歌词下标值
    NSInteger currentIndex = [_musics indexOfObject:_playingMusic];
    
    // 2.取出下一首
    NSInteger previousIndex = --currentIndex;
    if (previousIndex < 0) {
        previousIndex = _musics.count - 1;
    }
    XMGMusic *previousMusic = _musics[previousIndex];
    
    return previousMusic;
}

@end
