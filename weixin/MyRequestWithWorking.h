//
//  MyRequestWithWorking.h
//  weixin
//
//  Created by LiJinSuo on 16/6/27.
//  Copyright © 2016年 LiJinSuo. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义返回请求数据的block类型
typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);
typedef void (^FailureBlock) ();

@interface MyRequestWithWorking : NSObject

#pragma GET请求
+(void) NetRequetGETWithRequestURL:(NSString *) requestURLString WithParameter:(NSDictionary *)Parameter WithReturnBlock:(ReturnValueBlock) block WithErrorCodeBlock:(ErrorCodeBlock)errorBlock WithFailureBlock:(FailureBlock)failureBlock;

#pragma POST请求
+(void) NetRequetPOSTWithRequestURL:(NSString *) requestURLString WithParameter:(NSDictionary *)Parameter WithReturnBlock:(ReturnValueBlock) block WithErrorCodeBlock:(ErrorCodeBlock)errorBlock WithFailureBlock:(FailureBlock)failureBlock;


@end
