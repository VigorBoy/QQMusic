//
//  XMGLrcline.m
//  QQMusic
//
//  Created by    🐯 on 16/2/15.
//  Copyright © 2016年 张炫赫. All rights reserved.
//

#import "XMGLrcline.h"

@implementation XMGLrcline
- (instancetype)initWithLrclineString:(NSString *)lrclineString
{
    if (self = [super init]) {
        // [01:05.43]我想就这样牵着你的手不放开
        NSArray *lrcArray = [lrclineString componentsSeparatedByString:@"]"];
        self.text = lrcArray[1]; //[i] 我想就这样牵着你的手不放开
        NSString *timeString = lrcArray[0]; //[0] [01:05.43
        //substringFromIndex 从第一位开始截取  返回是01:05.43
        self.time = [self timeStringWithString:[timeString substringFromIndex:1]];
    }
    return self;
}

+ (instancetype)lrcLineWithLrclineString:(NSString *)lrclineString
{
    return [[self alloc] initWithLrclineString:lrclineString];
}

#pragma mark - 私有方法
- (NSTimeInterval)timeStringWithString:(NSString *)timeString
{
    // 01:05.43
    //[0] 是 01  integerValue 把01字符串变成时间
    NSInteger min = [[timeString componentsSeparatedByString:@":"][0] integerValue];
    //(3, 2)从第三个位置开始截取两个字符  结果:05
    NSInteger second = [[timeString substringWithRange:NSMakeRange(3, 2)] integerValue];
    //[1]  结果是:43
    NSInteger haomiao = [[timeString componentsSeparatedByString:@"."][1] integerValue];
        
    return (min * 60 + second + haomiao * 0.01);
}
@end
