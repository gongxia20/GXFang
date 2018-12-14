//
//  GXCollectionViewProxy.m
//  GXFang
//
//  Created by James on 2018/11/19.
//  Copyright © 2018年 GX. All rights reserved.
//

#import "GXCollectionViewProxy.h"

@implementation GXCollectionViewProxy

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier configuration:(GXConfigBlock)cBlock action:(GXActionBlock)aBlock; {
    if (self = [super init]) {
        self.reuseIdentifier = reuseIdentifier;
        _cellActionBlock = aBlock;
        _cellConfigBlock = cBlock;
        
        _colloctionView = [UICollectionView new];
    }
    return self;
    
}

// 懒加载
- (UICollectionView *)colloctionView {
    if (!_colloctionView) {
        // 设置layout UICollectionViewLayout 跟 UICollectionViewFlowLayout区别?
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        // 设置成滚动水平布局
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
//        layout.scrollDirection = UICollectionViewScrollDirectionVertical;
        
        _colloctionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 100, UIScreen.mainScreen.bounds.size.width, 200) collectionViewLayout:layout];
    }
    return _colloctionView;
}
@end
