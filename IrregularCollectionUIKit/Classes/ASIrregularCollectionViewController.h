//
//  IrregularCollectionViewController.h
//  IrregularCollectionUIKit
//
//  Created by pisces on 9/17/16.
//
//

#import <UIKit/UIKit.h>
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import "IrregularCollectionViewLayout.h"
#import "PropertyManagedViewController.h"

@interface ASIrregularCollectionViewController : PropertyManagedViewController <ASCollectionDataSource, ASCollectionDelegate, IrregularCollectionViewLayoutDelegate>
@property (nonnull, nonatomic, readonly) IrregularCollectionViewLayout *collectionViewLayout;
@property (nonnull, nonatomic, readonly) IrregularCollectionViewLayoutInspector *layoutInspector;
@property (nonnull, nonatomic) IBOutlet ASCollectionView *collectionView;
- (void)performBatchUpdates:(void (^_Nullable)())updates completion:(void (^_Nullable)(BOOL))completion;
- (void)prepareLayout;
- (void)reloadData;
- (void)reloadDataWithCompletion:(void (^_Nullable)())completion;
@end
