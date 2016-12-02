//
//  BEManager.h
//  BugEase_iOS
//
//  Created by jc on 16/8/1.
//  Copyright © 2016年 jc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, BEModel){
    BEInvocationEventNone, // 0 直接启动
    BEInvocationEventShake, // 1 摇一摇启动
    BEInvocationEventFloatButton, // 2 悬浮窗启动
    BEInvocationEventScreenShot, // 3 截屏启动
    BEInvocationEventTwoFingerSwipe // 4 双指右滑启动
};

@interface BEManager : NSObject
+(id)shareManagerWithAppKeys:(NSString *) appKey withModel:(NSUInteger) model;

//用户账号信息接口
+(void) setUserAccountInfo:(NSString*) userAccountInfo;

//取消用户账号信息
    
+(void) clearUserAccountInfo;


//设置应用日志路径

+(void) setApplyLogPath:(NSString*) logPath;
//设置应用日志大小
+(void) setApplyLogSizeWithKB:(NSInteger) sizeWithKB;

//设置自定义字段

+(void) setUserData:(NSString*) key andValue:(NSString*) value;

//自己直接调用API上传文件

+(void) sendFeedBackWithType:(NSUInteger)type andContent:(NSString*) feedContent andReporter:(NSString*)reporter andImagePath:(NSString*)imagePath andTags:(NSArray*) tags;


//Demo app 专用API

+(void) selectModel:(BEModel)model;

@end
