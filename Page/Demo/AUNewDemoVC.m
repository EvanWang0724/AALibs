//
//  AUNewDemoVC.m
//  AU_FX
//
//  Created by Evan Wong on 2024/7/30.
//

#import "AUNewDemoVC.h"
#import "AUNewDemoView.h"
#import "AUNewDemoViewModel.h"

@interface AUNewDemoVC () <AUViewEventDelegate>

@property (nonatomic, strong) AUNewDemoView *contentView;
@property (nonatomic, strong) AUNewDemoViewModel *viewModel;

@end

@implementation AUNewDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // UI
    self.contentView = [[AUNewDemoView alloc] initWithSuperview:self.view];
    self.contentView.delegate = self;
    self.contentView.demoView.delegate = self;
    
    // 逻辑
    self.viewModel = [[AUNewDemoViewModel alloc] init];
    // 加载数据
    [self loadData];
}

// MARK: - 代理

- (void)viewEventHandler:(nonnull UIView *)view event:(AUViewEvent)event info:(nullable id)eventInfo {
    
    // 有可能代理多个view的事件处理
    if (view == self.contentView) {
        
        // 提交
        if (event == AUNewDemoViewSubmit) {
            
            [self submit];
        }
    } else if (view == self.contentView.demoView) {
        
    }
}

/// 加载数据
- (void)loadData {
    
    // 加载数据
    [self.contentView startLoading];
    MJWeakSelf
    [self.viewModel loadData:@{} completion:^(BOOL result, NSString * _Nonnull error, AUNewDemoModel * _Nonnull data) {
        
        [weakSelf.contentView endLoading];
        if (!result) {
            [VFXProgressHUD show:error];
            return;
        }
        [weakSelf.contentView setData:data];
    }];
}

/// 提交
- (void)submit {
    
    // 加载数据
    [self.contentView startLoading];
    MJWeakSelf
    [self.viewModel submit:@{} completion:^(BOOL result, NSString * _Nonnull error, AUNewDemoModel * _Nonnull data) {
        
        [weakSelf.contentView endLoading];
        if (!result) {
            [VFXProgressHUD show:error];
            return;
        }
        [weakSelf.contentView setData:data];
    }];
}

@end
