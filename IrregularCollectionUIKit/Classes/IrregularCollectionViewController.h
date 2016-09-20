//
//  IrregularCollectionViewController.h
//  IrregularCollectionUIKit
//
//  Created by pisces on 9/20/16.
//
//

#import <UIKit/UIKit.h>
#import "IrregularCollectionViewLayout.h"

@interface IrregularCollectionViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, IrregularCollectionViewLayoutDelegate>
@property (nonnull, nonatomic, readonly) IrregularCollectionViewLayout *collectionViewLayout;
@property (nonnull, nonatomic, readonly) IrregularCollectionViewLayoutInspector *layoutInspector;
@property (nonnull, nonatomic) IBOutlet ASCollectionView *collectionView;
- (void)reloadData;
@end