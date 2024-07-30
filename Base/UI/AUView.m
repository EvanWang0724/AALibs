//
//  AUView.m
//  AU_FX
//
//  Created by Evan Wong on 2024/7/30.
//

#import "AUView.h"

@implementation AUView

- (nonnull instancetype)initWithSuperview:(nonnull UIView *)superview {
    if (self = [super init]) {
        
        [superview addSubview:self];
        
        [self mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(superview);
        }];
        
        [self initSubviews];
        [self configSubviews];
        [self layoutSubviews];
        [self configViewEvents];
    }
    return self;
}

- (void)initSubviews {
}

- (void)configSubviews {
}

- (void)layoutSubviews {
}

/// 配置页面事件
- (void)configViewEvents {
    if (!self.delegate || 
        ![self.delegate respondsToSelector:@selector(viewEventHandler:event:info:)]) {
        return;
    }
}

- (void)setData:(nonnull id)data {
}

- (void)startLoading {
}

- (void)endLoading {
}

@end
