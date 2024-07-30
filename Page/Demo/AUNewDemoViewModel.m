//
//  AUNewDemoViewModel.m
//  AU_FX
//
//  Created by Evan Wong on 2024/7/30.
//

#import "AUNewDemoViewModel.h"

@implementation AUNewDemoViewModel

/// 加载数据
/// - Parameters:
///   - params: 参数
///   - block: 回调
- (void)loadData:(NSDictionary *)params completion:(void(^)(BOOL, NSString *, AUNewDemoModel *))block {
    
    block(NO, @"Error", nil);
}

/// 提交
/// - Parameters:
///   - params: 参数
///   - block: 回调
- (void)submit:(NSDictionary *)params completion:(void(^)(BOOL, NSString *, AUNewDemoModel *))block {
    
    block(NO, @"Error", nil);
}

@end
