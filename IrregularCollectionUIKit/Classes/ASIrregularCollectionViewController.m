//
//  ASIrregularCollectionViewController.m
//  IrregularCollectionUIKit
//
//  Created by pisces on 9/17/16.
//
//

#import "ASIrregularCollectionViewController.h"

@implementation ASIrregularCollectionViewController

#pragma mark - Overridden: UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _collectionViewLayout = [[IrregularCollectionViewLayout alloc] initWithDelegate:self];
    _layoutInspector = [[IrregularCollectionViewLayoutInspector alloc] init];
    _collectionView = [[ASCollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:_collectionViewLayout];
    _collectionView.asyncDelegate = self;
    _collectionView.asyncDataSource = self;
    _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    _collectionView.layoutInspector = _layoutInspector;
    
    [_collectionView registerSupplementaryNodeOfKind:UICollectionElementKindSectionHeader];
    [_collectionView registerSupplementaryNodeOfKind:UICollectionElementKindSectionFooter];
    [self.view addSubview:_collectionView];
}

- (void)performBatchUpdates:(void (^)())updates completion:(void (^)(BOOL))completion {
    [_layoutInspector preapareLayoutWithCollectionView:_collectionView];
    [_collectionView performBatchUpdates:updates completion:completion];
}

- (void)prepareLayout {
    [_layoutInspector preapareLayoutWithCollectionView:_collectionView];
}

- (void)reloadData {
    [_layoutInspector preapareLayoutWithCollectionView:_collectionView];
    [_collectionView reloadData];
}

- (void)reloadDataWithCompletion:(void (^)())completion {
    [_layoutInspector preapareLayoutWithCollectionView:_collectionView];
    [_collectionView reloadDataWithCompletion:completion];
}

@end
