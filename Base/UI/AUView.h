//
//  AUView.h
//  AU_FX
//
//  Created by Evan Wong on 2024/7/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 枚举类型别名
typedef NSUInteger AUViewEvent;

/// 页面事件代理
@protocol AUViewEventDelegate <NSObject>

/// 页面事件
- (void)viewEventHandler:(UIView *)view event:(AUViewEvent)event info:(nullable id)eventInfo;

@end

@interface AUView : UIView

/// 页面事件代理
@property (nonatomic, assign) id<AUViewEventDelegate> delegate;

/// 初始化并添加到Controller的View上
- (instancetype)initWithSuperview:(UIView *)superview;

/// 初始化subview
- (void)initSubviews;

/// 配置subview，UILabel的文字，UIImageView的图片等等
- (void)configSubviews;

/// 布局subview
- (void)layoutSubviews;

/// 配置页面事件
- (void)configViewEvents;

/// 设定数据
- (void)setData:(id)data;

/// 显示加载样式
- (void)startLoading;

/// 结束加载样式
- (void)endLoading;

@end

NS_ASSUME_NONNULL_END
