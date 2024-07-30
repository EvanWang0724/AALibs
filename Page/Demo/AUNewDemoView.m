//
//  AUNewDemoView.m
//  AU_FX
//
//  Created by Evan Wong on 2024/7/30.
//

#import "AUNewDemoView.h"
#import "AUNewDemoModel.h"

@interface AUNewDemoView ()

/// 所有的控件
@property (nonatomic, strong) UIButton *submitButton;

@end

@implementation AUNewDemoView

@synthesize delegate = _delegate;

- (void)initSubviews {
    
    self.submitButton = [[UIButton alloc] init];
}

- (void)configSubviews {
    
    [self.submitButton setTitle:@"Submit" forState:UIControlStateNormal];
    [self.submitButton setImage:nil forState:UIControlStateNormal];
}

- (void)layoutSubviews {
    
//    [self.submitButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.mas_equalTo(self).mas_offset(-50);
//        make.left.mas_equalTo(self).mas_offset(12);
//        make.right.mas_equalTo(self).mas_offset(-12);
//        make.height.mas_equalTo(48);
//    }];
}

/// 配置页面事件
- (void)configViewEvents {
    [super configViewEvents];
    
    // 底部提交按钮事件
    [self.submitButton addTarget:self action:@selector(submitButtonClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)setData:(AUNewDemoModel *)data {
}

- (void)startLoading {
}

- (void)endLoading {
}

- (void)setDelegate:(id<AUViewEventDelegate>)delegate {
    
    _delegate = delegate;
    self.demoView.delegate = delegate;
}

- (void)submitButtonClick:(UIButton *)button {
    
    [self.delegate viewEventHandler:self event:AUNewDemoViewSubmit info:nil];
}

@end
