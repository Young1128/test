//
//  MyRequestWithWorking.m
//  weixin
//
//  Created by LiJinSuo on 16/6/27.
//  Copyright © 2016年 LiJinSuo. All rights reserved.
//

#import "MyRequestWithWorking.h"
#import "AFNetworking.h"
#define NSSTRINGY(...) [NSString stringWithFormat:__VA_ARGS__]

@implementation MyRequestWithWorking

#pragma mark ----GET 请求方式
#pragma GET请求
+(void) NetRequetGETWithRequestURL:(NSString *) requestURLString WithParameter:(NSDictionary *)Parameter WithReturnBlock:(ReturnValueBlock) block WithErrorCodeBlock:(ErrorCodeBlock)errorBlock WithFailureBlock:(FailureBlock)failureBlock{
    
    NSString *requestURL = NSSTRINGY(@"%@%@",requestURLString,@"sff");
    AFHTTPRequestOperationManager *requestmange = [[AFHTTPRequestOperationManager alloc]init];
    AFHTTPRequestOperation *op = [requestmange GET:requestURL parameters:Parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
        block(dic);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failureBlock();
    }];
    
    op.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [op start];
}

#pragma POST请求
+(void) NetRequetPOSTWithRequestURL:(NSString *) requestURLString WithParameter:(NSDictionary *)Parameter WithReturnBlock:(ReturnValueBlock) block WithErrorCodeBlock:(ErrorCodeBlock)errorBlock WithFailureBlock:(FailureBlock)failureBlock{
   
    NSString *requestURL = NSSTRINGY(@"%@%@",requestURLString,@"sss");
    AFHTTPRequestOperationManager *requestmange = [[AFHTTPRequestOperationManager alloc]init];
    
    AFHTTPRequestOperation *op = [requestmange POST:requestURL parameters:Parameter success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil]
    } failure:<#^(AFHTTPRequestOperation *operation, NSError *error)failure#>]
    
    
}


@end
