//
//  AUNewDemoView.h
//  AU_FX
//
//  Created by Evan Wong on 2024/7/30.
//

#import "AUView.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_OPTIONS(NSUInteger, AUNewDemoViewEvents) {
    AUNewDemoViewRefresh,
    AUNewDemoViewSubmit
};

@interface AUNewDemoView : AUView

@property (nonatomic, strong) AUNewDemoView *demoView;

@end

NS_ASSUME_NONNULL_END
