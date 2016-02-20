//
//  XMGLrcline.h
//  QQMusic
//
//  Created by    🐯 on 16/2/15.
//  Copyright © 2016年 张炫赫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGLrcline : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) NSTimeInterval time;

- (instancetype)initWithLrclineString:(NSString *)lrclineString;
+ (instancetype)lrcLineWithLrclineString:(NSString *)lrclineString;
@end
