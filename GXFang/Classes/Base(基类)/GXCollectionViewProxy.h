//
//  GXCollectionViewProxy.h
//  GXFang
//
//  Created by James on 2018/11/19.
//  Copyright © 2018年 GX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GXCollectionViewProxy : NSObject

// cell的点击事件和配置都要传递给外面
- (instancetype)init;

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier configuration:(void(^)(UICollectionViewCell *cell,id cellData,NSIndexPath *indexPath))cBlock action:(void(^)(UICollectionViewCell *cell,id cellData,NSIndexPath *indexPath))aBlock;

@end
