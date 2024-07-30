//
//  AUNewDemoViewModel.h
//  AU_FX
//
//  Created by Evan Wong on 2024/7/30.
//

#import <Foundation/Foundation.h>
#import "AUNewDemoModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface AUNewDemoViewModel : NSObject

/// 加载数据
/// - Parameters:
///   - params: 参数
///   - block: 回调
- (void)loadData:(NSDictionary *)params completion:(void(^)(BOOL, NSString *, AUNewDemoModel *))block;

/// 提交
/// - Parameters:
///   - params: 参数
///   - block: 回调
- (void)submit:(NSDictionary *)params completion:(void(^)(BOOL, NSString *, AUNewDemoModel *))block;

@end

NS_ASSUME_NONNULL_END
