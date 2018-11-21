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
@end
