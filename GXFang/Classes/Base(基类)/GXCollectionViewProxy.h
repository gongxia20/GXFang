//
//  GXCollectionViewProxy.h
//  GXFang
//
//  Created by James on 2018/11/19.
//  Copyright © 2018年 GX. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^GXConfigBlock)(UICollectionViewCell *cell,id cellData,NSIndexPath *indexPath);
typedef void(^GXActionBlock)(UICollectionViewCell *cell,id cellData,NSIndexPath *indexPath);

@interface GXCollectionViewProxy : NSObject
@property (nonatomic, strong) NSString *reuseIdentifier; /**< 重用标识符 */
@property (nonatomic, strong) NSArray *array;            /**< 数据 */

@property (nonatomic, copy) GXConfigBlock cellConfigBlock;
// collection中有事件, 通过cellActionBlock回调回去
@property (nonatomic, copy) GXActionBlock cellActionBlock;

@property (nonatomic, strong) UICollectionView *colloctionView;

// cell的点击事件和配置都要传递给外面
- (instancetype)init;

// 添加action是滚动由collection来管,cell的点击由tableView来做,添加block就可以使内部数据由外部处理
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier configuration:(GXConfigBlock)cBlock action:(GXActionBlock)aBlock;

@end
