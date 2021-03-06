//
//  GXHomeViewController.m
//  GXFang
//
//  Created by James on 2018/11/15.
//  Copyright © 2018年 GX. All rights reserved.
//

#import "GXHomeViewController.h"
#import "GXHomeCollectionViewProxy.h"

@interface GXHomeViewController () <UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) id dataManager;
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) UIView *tabSegmentedControl;
@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation GXHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.tabSegmentedControl = [UIView new];
    [self.view addSubview:self.tabSegmentedControl];
    
    self.collectionView = [UICollectionView new];
    [self.view addSubview:self.collectionView];
}

#pragma mark -- collectionView datasource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _dataArray.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}

# pragma mark --collectionView delegate
//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//
//}

@end
